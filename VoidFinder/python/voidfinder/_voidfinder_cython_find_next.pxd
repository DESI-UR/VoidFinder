



cimport numpy as np
cimport cython

from typedefs cimport DTYPE_CP128_t, DTYPE_CP64_t, DTYPE_F64_t, DTYPE_F32_t, DTYPE_B_t, ITYPE_t, DTYPE_INT32_t, DTYPE_INT64_t



cdef void find_next_galaxy(DTYPE_F64_t[:,:] hole_center_memview, \
                           DTYPE_F64_t[:,:] moving_hole_center_memview, \
                            DTYPE_F64_t hole_radius, \
                            DTYPE_F64_t dr, \
                            DTYPE_F64_t direction_mod,\
                            DTYPE_F64_t[:] unit_vector_memview, \
                            galaxy_tree, \
                            #galaxy_kdtree, \
                            DTYPE_INT64_t[:] nearest_gal_index_list, \
                            ITYPE_t num_neighbors, \
                            DTYPE_F64_t[:,:] w_coord, \
                            DTYPE_B_t[:,:] mask, \
                            DTYPE_INT32_t mask_resolution, \
                            DTYPE_F64_t min_dist, \
                            DTYPE_F64_t max_dist, \
                            
                            DTYPE_F64_t[:] Bcenter_memview, \
                            
                            ITYPE_t[:] MAX_NEAREST, \
                            ITYPE_t[:] i_nearest_reduced_memview, \
                            DTYPE_F64_t[:,:] candidate_minus_A_memview, \
                            DTYPE_F64_t[:,:] candidate_minus_center_memview, \
                            DTYPE_F64_t[:] bot_memview, \
                            DTYPE_F64_t[:] top_memview, \
                            DTYPE_F64_t[:] x_ratio_memview, \
                            Cell_ID_Memory cell_ID_mem, \
                            #ITYPE_t[:] nearest_neighbor_x_ratio_index, \
                            ITYPE_t[:] nearest_neighbor_index, \
                            DTYPE_F64_t[:] min_x_ratio, \
                            DTYPE_B_t[:] in_mask)
                            #DTYPE_F64_t[:] PROFILE_kdtree_time) #except *




cdef DTYPE_B_t not_in_mask(DTYPE_F64_t[:,:] coordinates, \
                  DTYPE_B_t[:,:] survey_mask_ra_dec, \
                  DTYPE_INT32_t n, \
                  DTYPE_F64_t rmin, \
                  DTYPE_F64_t rmax)



cdef class GalaxyMap:
    
    cdef public DTYPE_F64_t[:,:] w_coord
    
    cdef public DTYPE_F64_t[:,:] coord_min
    
    cdef public DTYPE_F64_t dl
    
    cdef public DTYPE_INT64_t[:,:] reference_point_ijk
    
    cdef public DTYPE_F64_t[:,:] shell_boundaries_xyz
    
    #cdef DTYPE_F64_t[:,:] min_containing_dist_mem
    
    cdef public DTYPE_F64_t[:,:] cell_center_xyz
    
    cdef DTYPE_F64_t temp1
    
    cdef DTYPE_F64_t temp2
    
    cdef public dict nonvoid_cell_ID_dict
    
    cdef public dict galaxy_map
    
    #cdef public DTYPE_INT64_t[:,:] cell_ID_mem

cdef struct DistIdxPair:
    ITYPE_t idx
    DTYPE_F64_t dist
    
#cdef DistIdxPair _query_first(GalaxyMap galaxy_map, \
#                                         DTYPE_F64_t[:,:] reference_point_xyz)
                                         
                                         
                                         
cdef class Cell_ID_Memory:

    cdef DTYPE_INT64_t* data     
    
    cdef DTYPE_INT64_t num_rows                  
                                         
                                         
                                         
                                         
cdef DistIdxPair _query_first(DTYPE_INT64_t[:,:] reference_point_ijk, \
                              DTYPE_F64_t[:,:] coord_min, \
                              DTYPE_F64_t dl, \
                              DTYPE_F64_t[:,:] shell_boundaries_xyz, \
                              DTYPE_F64_t[:,:] cell_center_xyz, \
                              dict galaxy_map, \
                              DTYPE_F64_t[:,:] w_coord, \
                              Cell_ID_Memory cell_ID_mem, \
                              DTYPE_F64_t[:,:] reference_point_xyz)
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         