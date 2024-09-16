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
    prepare_print = kwargs.get("prepare_print", True)

    pos = kwargs.get("pos", [0, 0, 0])
    #pos = copy.deepcopy(pos)
    #pos[2] += -20

    dep = 80
    wid_total = 215
    wid = wid_total
    hei_total = 215
    hei = hei_total
    clear = 3
    ratio = 0.4142


    #add plate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"rounded_rectangle"    
    w = wid - clear
    h = (hei * ratio) - clear
    d = dep
    size = [w,h,d]
    p3["size"] = size    
    #p3["m"] = "#" 
    p3["radius"] = 0.1 
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1


    rots = []
    rots.append([0,0,0])
    rots.append([0,0,45])
    rots.append([0,0,-45])
    rots.append([0,0,90])
    for rot in rots:
        p4 = copy.deepcopy(p3)
        p4["rot"] = rot
        oobb_base.append_full(thing,**p4)
    
    #add base cutout
    dep_inset = 7
    dep = dep_inset
    wid = 170
    hei = 170
    clear = 2
    ratio = 0.4142        
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"rounded_rectangle"    
    w = wid + clear
    h = (hei * ratio) + clear
    d = dep
    size = [w,h,d]
    p3["size"] = size    
    #p3["m"] = "#" 
    p3["radius"] = 1 
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1


    rots = []
    rots.append([0,0,0])
    rots.append([0,0,45])
    rots.append([0,0,-45])
    rots.append([0,0,90])
    for rot in rots:
        p4 = copy.deepcopy(p3)
        p4["rot"] = rot
        oobb_base.append_full(thing,**p4)
        
    #add cutouts for tabs    
    dep = 22
    wid = 300
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


    rots = []
    rots.append([0,0,0])
    rots.append([0,0,45])
    rots.append([0,0,-45])
    rots.append([0,0,90])
    for rot in rots:
        p4 = copy.deepcopy(p3)
        p4["rot"] = rot
        oobb_base.append_full(thing,**p4)
            

    #add cutouts for oobb
    
    dep_oobb = 80-dep_inset
    dep = 80
    sizes = []
    sizes.append([14, 6])
    sizes.append([12, 8])
    sizes.append([10, 10])
    sizes.append([8, 12])
    sizes.append([6, 14])

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

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)
        pos1[0] += -wid_total/2 + 25
        pos1[1] += -500/2
        p3["pos"] = pos1
        oobb_base.append_full(thing,**p3)
    
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