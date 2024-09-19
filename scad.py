import copy
import opsc
import oobb
import oobb_base

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []

    # save_type variables
    if True:
        filter = ""
        #filter = "test"

        kwargs["save_type"] = "none"
        kwargs["save_type"] = "all"
        
        kwargs["overwrite"] = True
        
        #kwargs["modes"] = ["3dpr", "laser", "true"]
        kwargs["modes"] = ["3dpr"]
        #kwargs["modes"] = ["laser"]

    # default variables
    if True:
        kwargs["size"] = "oobb"
        kwargs["width"] = 1
        kwargs["height"] = 1
        kwargs["thickness"] = 3
        
    # project_variables
    if True:
        pass
    
    # declare parts
    if True:

        part_default = {} 
        part_default["project_name"] = "test" ####### neeeds setting
        part_default["full_shift"] = [0, 0, 0]
        part_default["full_rotations"] = [0, 0, 0]
        
        part = copy.deepcopy(part_default)
        p3 = copy.deepcopy(kwargs)
        #p3["thickness"] = 6
        part["kwargs"] = p3
        part["name"] = "base"
        parts.append(part)

        
    #make the parts
    if True:
        for part in parts:
            name = part.get("name", "default")
            if filter in name:
                print(f"making {part['name']}")
                make_scad_generic(part)            
                print(f"done {part['name']}")
            else:
                print(f"skipping {part['name']}")

def get_base(thing, **kwargs):

    depth = kwargs.get("thickness", 4)
    #prepare_print = kwargs.get("prepare_print", False)
    prepare_print = kwargs.get("prepare_print", True)

    pos = kwargs.get("pos", [0, 0, 0])
    #pos = copy.deepcopy(pos)
    #pos[2] += -20

    dep_total = 70
    wid_total = 215
    wid = wid_total
    hei_total = 215
    hei = hei_total
    clear = 3
    ratio = 0.4142

    depth_top = 16

    deets = []

    dep = 7
    clear = 16
    deet = {"dep":dep,"clear":clear}
    deets.append(deet)

    dep = dep_total - dep - depth_top
    clear = 9
    deet = {"dep":dep,"clear":clear}
    deets.append(deet)

    dep = depth_top
    clear = 1
    deet = {"dep":dep,"clear":clear}
    deets.append(deet)

    #add plate
    z_current = 0
    if True:
        for deet in deets:
            dep = deet["dep"]
            clear = deet["clear"]
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "p"
            p3["shape"] = f"rounded_octagon"    
            p3["width"] = wid - clear
            p3["depth"] = dep
            #p3["m"] = "#" 
            p3["radius"] = 20 
            pos1 = copy.deepcopy(pos)                        
            pos1[2] += z_current  
            p3["pos"] = pos1
            oobb_base.append_full(thing,**p3)

            
            z_current += dep
            
    #add base cutout
    if True:    
        dep_inset = 7
        dep = dep_inset
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"rounded_octagon"    
        p3["width"] = 175
        p3["depth"] = 500#dep        
        #p3["m"] = "#" 
        p3["radius"] = 5
        pos1 = copy.deepcopy(pos) 

        p3["pos"] = pos1


        oobb_base.append_full(thing,**p3)
            
    #add cutouts for tabs    
    if True:
        dep = 22
        wid = 10
        hei = 2        
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"rounded_rectangle"    
        w = wid
        h = hei
        d = dep
        size = [w,h,d]
        p3["size"] = size    
        #p3["m"] = "#" 
        p3["radius"] = 1 
        pos1 = copy.deepcopy(pos)         
        p3["pos"] = pos1

        shift_1 = wid_total / 2 - wid/2
        #import math for trigonometry
        import math
        #x position after a 45 degrree rotation of wid_total/2
        shift_2 = shift_1 * math.sin(math.radians(45))
        deets = []
        rot = [0,0,0]
        pos1 = [-shift_1,0,0]
        deet = {"rot":rot,"pos":pos1}
        deets.append(deet)

        rot = [0,0,45]
        pos1 = [-shift_2,-shift_2,0]
        deet = {"rot":rot,"pos":pos1}
        deets.append(deet)        

        rot = [0,0,-45]
        pos1 = [shift_2,-shift_2,0]
        deet = {"rot":rot,"pos":pos1}
        deets.append(deet)

        rot = [0,0,90]
        pos1 = [0,-shift_1,0]
        deet = {"rot":rot,"pos":pos1}
        deets.append(deet)

        rot = [0,0,45]
        pos1 = [shift_2,shift_2,0]
        deet = {"rot":rot,"pos":pos1}
        deets.append(deet)

        rot = [0,0,-45]
        pos1 = [-shift_2,shift_2,0]
        deet = {"rot":rot,"pos":pos1}
        deets.append(deet)

        rot = [0,0,180]
        pos1 = [shift_1,0,0]
        deet = {"rot":rot,"pos":pos1}
        deets.append(deet)

        rot = [0,0,90]
        pos1 = [0,shift_1,0]
        deet = {"rot":rot,"pos":pos1}
        deets.append(deet)

        for deet in deets:
            p4 = copy.deepcopy(p3)
            p4["rot"] = deet["rot"]
            pos1 = copy.deepcopy(deet["pos"])
            pos1[0] += pos[0]
            pos1[1] += pos[1]
            pos1[2] += pos[2]
            p4["pos"] = pos1
            oobb_base.append_full(thing,**p4)
                

    #add cutouts for oobb
    
    dep_oobb = 80-dep_inset
    dep = 80
    sizes = []
    sizes.append([13, 7])
    
    sizes.append([9, 11])
    sizes.append([7, 13])

    if True:
        for s in sizes:
            wid_oobb = s[0]
            hei_oobb = s[1]
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "n"
            p3["shape"] = f"oobb_plate"    
            p3["width"] = wid_oobb
            p3["height"] = hei_oobb
            p3["depth"] = dep_oobb
            #p3["m"] = "#"
            p3["zz"] = "top"
            pos1 = copy.deepcopy(pos)        
            pos1[2] += dep
            p3["pos"] = pos1
            oobb_base.append_full(thing,**p3)

    #add m6 bolts
    if True:
        shift_a_1 = 74
        shift_b_1 = 59
        points = []
        points.append([shift_a_1,shift_b_1])
        points.append([-shift_a_1,shift_b_1])
        points.append([-shift_a_1,-shift_b_1])
        points.append([shift_a_1,-shift_b_1])
        shift_a_1 = 90
        shift_b_1 = 45
        #points.append([shift_a_1,shift_b_1])
        #points.append([-shift_a_1,shift_b_1])
        #points.append([-shift_a_1,-shift_b_1])
        #points.append([shift_a_1,-shift_b_1])


        for point in points:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "n"
            p3["shape"] = f"oobb_nut"    
            p3["radius_name"] = "m6"
            p3["hole"] = True
            p3["pos"] = copy.deepcopy(pos)
            p3["pos"][0] += point[0]
            p3["pos"][1] += point[1]
            p3["pos"][2] += 0
            p3["m"] = "#"
            oobb_base.append_full(thing,**p3)


    
    
    #add holes
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_holes"
    p3["both_holes"] = True  
    p3["depth"] = depth
    p3["holes"] = "perimeter"
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    #oobb_base.append_full(thing,**p3)

    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        #thing["components"].append(return_value_2)

        #slice_type = "none"
        #slice_type = "one_corner"
        #slice_type = "half"
        #slice_type = "quarter"
        slice_type = ["bottom_layer","quarter"]
    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)
        if "half" in slice_type or "quarter" in slice_type:
            pos1[0] += 0
            pos1[1] += -500/2
        elif "one_corner" in slice_type:
            pos1[0] += -wid_total/2 + 25
            pos1[1] += -500/2
        p3["pos"] = pos1
        if slice_type != "none":
            oobb_base.append_full(thing,**p3)
        
        if "quarter" in slice_type:
            p4 = copy.deepcopy(p3)
            pos1 = copy.deepcopy(pos)
            pos1[0] += -500/4
            pos1[1] += 0            
            p4["pos"] = pos1
            #p4["m"] = "#"
            oobb_base.append_full(thing,**p4)
    
        if "bottom_layer" in slice_type:
            p4 = copy.deepcopy(p3)
            pos1 = copy.deepcopy(pos)
            pos1[0] += 0
            pos1[1] += 0            
            pos1[2] += 9
            p4["pos"] = pos1
            #p4["m"] = "#"
            oobb_base.append_full(thing,**p4)

###### utilities



def make_scad_generic(part):
    
    # fetching variables
    name = part.get("name", "default")
    project_name = part.get("project_name", "default")
    
    kwargs = part.get("kwargs", {})    
    
    modes = kwargs.get("modes", ["3dpr", "laser", "true"])
    save_type = kwargs.get("save_type", "all")
    overwrite = kwargs.get("overwrite", True)

    kwargs["type"] = f"{project_name}_{name}"

    thing = oobb_base.get_default_thing(**kwargs)
    kwargs.pop("size","")

    #get the part from the function get_{name}"
    func = globals()[f"get_{name}"]    
    # test if func exists
    if callable(func):            
        func(thing, **kwargs)        
    else:            
        get_base(thing, **kwargs)   
    

    for mode in modes:
        depth = thing.get(
            "depth_mm", thing.get("thickness_mm", 3))
        height = thing.get("height_mm", 100)
        layers = depth / 3
        tilediff = height + 10
        start = 1.5
        if layers != 1:
            start = 1.5 - (layers / 2)*3
        if "bunting" in thing:
            start = 0.5
        opsc.opsc_make_object(f'scad_output/{thing["id"]}/{mode}.scad', thing["components"], mode=mode, save_type=save_type, overwrite=overwrite, layers=layers, tilediff=tilediff, start=start)    


if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)