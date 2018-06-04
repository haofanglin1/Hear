package hear.dao;

import hear.entity.Singer;

import java.util.List;


public interface SingerMapper {
    public List<Singer> selectSinger();

    public List<Singer> selectMySinger1();

    public List<Singer> selectMySinger2();

    public List<Singer> selectChMaleSinger();

    public List<Singer> selectChFemaleSinger();

    public List<Singer> selectChBand();

    public List<Singer> selectEngMaleSinger();

    public List<Singer> selectEngFemaleSinger();

    public List<Singer> selectEngBand();

    public List<Singer> selectJkMaleSinger();

    public List<Singer> selectJkFemaleSinger();

    public List<Singer> selectJkBand();
}
