#ifndef FSCULLING_IS_INCLUDED
#define FSCULLING_IS_INCLUDED

#include <ysclass.h>

class FsCullingUtil
{
public:
    class Frustum
    {
    public:
        YsPlane planes[6]; // left, right, bottom, top, near, far
    };

    // Create a frustum from the current view and projection matrix
    static Frustum CreateFrustumFromCurrentMatrix(void);

    // Test if sphere is visible in frustum
    static YSBOOL IsSphereVisible(const Frustum &frustum, const YsVec3 &center, const double radius);
    
    // Test if bounding box is visible in frustum
    static YSBOOL IsBoundingBoxVisible(const Frustum &frustum, const YsVec3 bbx[2]);
    
    // Test if a point is visible in frustum
    static YSBOOL IsPointVisible(const Frustum &frustum, const YsVec3 &point);
    
    // Get distance from a point to a plane
    static double DistanceToPlane(const YsPlane &plane, const YsVec3 &point);
};

#endif