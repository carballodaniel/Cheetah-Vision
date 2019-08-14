/* LCM type definition class file
 * This file was automatically generated by lcm-gen
 * DO NOT MODIFY BY HAND!!!!
 */

package lcmtypes;
 
import java.io.*;
import java.util.*;
import lcm.lcm.*;
 
public final class lidar_pose_t implements lcm.lcm.LCMEncodable
{
    public double p_lidar[];
    public double lidar_quaternion[];
 
    public lidar_pose_t()
    {
        p_lidar = new double[3];
        lidar_quaternion = new double[4];
    }
 
    public static final long LCM_FINGERPRINT;
    public static final long LCM_FINGERPRINT_BASE = 0xe54d9d7346f5aed6L;
 
    static {
        LCM_FINGERPRINT = _hashRecursive(new ArrayList<Class<?>>());
    }
 
    public static long _hashRecursive(ArrayList<Class<?>> classes)
    {
        if (classes.contains(lcmtypes.lidar_pose_t.class))
            return 0L;
 
        classes.add(lcmtypes.lidar_pose_t.class);
        long hash = LCM_FINGERPRINT_BASE
            ;
        classes.remove(classes.size() - 1);
        return (hash<<1) + ((hash>>63)&1);
    }
 
    public void encode(DataOutput outs) throws IOException
    {
        outs.writeLong(LCM_FINGERPRINT);
        _encodeRecursive(outs);
    }
 
    public void _encodeRecursive(DataOutput outs) throws IOException
    {
        for (int a = 0; a < 3; a++) {
            outs.writeDouble(this.p_lidar[a]); 
        }
 
        for (int a = 0; a < 4; a++) {
            outs.writeDouble(this.lidar_quaternion[a]); 
        }
 
    }
 
    public lidar_pose_t(byte[] data) throws IOException
    {
        this(new LCMDataInputStream(data));
    }
 
    public lidar_pose_t(DataInput ins) throws IOException
    {
        if (ins.readLong() != LCM_FINGERPRINT)
            throw new IOException("LCM Decode error: bad fingerprint");
 
        _decodeRecursive(ins);
    }
 
    public static lcmtypes.lidar_pose_t _decodeRecursiveFactory(DataInput ins) throws IOException
    {
        lcmtypes.lidar_pose_t o = new lcmtypes.lidar_pose_t();
        o._decodeRecursive(ins);
        return o;
    }
 
    public void _decodeRecursive(DataInput ins) throws IOException
    {
        this.p_lidar = new double[(int) 3];
        for (int a = 0; a < 3; a++) {
            this.p_lidar[a] = ins.readDouble();
        }
 
        this.lidar_quaternion = new double[(int) 4];
        for (int a = 0; a < 4; a++) {
            this.lidar_quaternion[a] = ins.readDouble();
        }
 
    }
 
    public lcmtypes.lidar_pose_t copy()
    {
        lcmtypes.lidar_pose_t outobj = new lcmtypes.lidar_pose_t();
        outobj.p_lidar = new double[(int) 3];
        System.arraycopy(this.p_lidar, 0, outobj.p_lidar, 0, 3); 
        outobj.lidar_quaternion = new double[(int) 4];
        System.arraycopy(this.lidar_quaternion, 0, outobj.lidar_quaternion, 0, 4); 
        return outobj;
    }
 
}
