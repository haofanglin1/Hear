package hear.control;

import hear.service.SingerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequestMapping("/artist")
@Controller
public class SingerControl {
    @Autowired
    private SingerService singerService;
    @RequestMapping("recommendsinger.action")
    public void recommendsinger(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("recommendslist",singerService.selectSinger());
        request.setAttribute("myslist1",singerService.selectMySinger1());
        request.setAttribute("myslist2",singerService.selectMySinger2());

        request.setAttribute("chmaleslist",singerService.selectChMaleSinger());
        request.setAttribute("chfemaleslist",singerService.selectChFemaleSinger());
        request.setAttribute("chbandslist",singerService.selectChBand());

        request.setAttribute("engmaleslist",singerService.selectEngMaleSinger());
        request.setAttribute("engfemaleslist",singerService.selectEngFemaleSinger());
        request.setAttribute("engbandslist",singerService.selectEngBand());

        request.setAttribute("jkmaleslist",singerService.selectJkMaleSinger());
        request.setAttribute("jkfemaleslist",singerService.selectJkFemaleSinger());
        request.setAttribute("jkbandslist",singerService.selectJkBand());
        request.getRequestDispatcher("/singerlist/singerlist.jsp").forward(request,response);
    }
}
