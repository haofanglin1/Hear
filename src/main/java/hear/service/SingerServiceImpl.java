package hear.service;

import hear.dao.SingerMapper;
import hear.entity.Singer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SingerServiceImpl implements SingerService{
    @Autowired
    private SingerMapper singerMapper;
    @Override
    public List<Singer> selectSinger() {
        return singerMapper.selectSinger();
    }

    @Override
    public List<Singer> selectMySinger1() {
        return singerMapper.selectMySinger1();
    }

    @Override
    public List<Singer> selectMySinger2() {
        return singerMapper.selectMySinger2();
    }

    @Override
    public List<Singer> selectChMaleSinger() {
        return singerMapper.selectChMaleSinger();
    }

    @Override
    public List<Singer> selectChFemaleSinger() {
        return singerMapper.selectChFemaleSinger();
    }

    @Override
    public List<Singer> selectChBand() {
        return singerMapper.selectChBand();
    }

    @Override
    public List<Singer> selectEngMaleSinger() {
        return singerMapper.selectEngMaleSinger();
    }

    @Override
    public List<Singer> selectEngFemaleSinger() {
        return singerMapper.selectEngFemaleSinger();
    }

    @Override
    public List<Singer> selectEngBand() {
        return singerMapper.selectEngBand();
    }

    @Override
    public List<Singer> selectJkMaleSinger() {
        return singerMapper.selectJkMaleSinger();
    }

    @Override
    public List<Singer> selectJkFemaleSinger() {
        return singerMapper.selectJkFemaleSinger();
    }

    @Override
    public List<Singer> selectJkBand() {
        return singerMapper.selectJkBand();
    }
}
