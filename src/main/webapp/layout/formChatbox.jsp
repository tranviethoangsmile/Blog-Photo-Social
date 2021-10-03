<div class="Chatbox" id="myForm">
    <form method="post">
        <h1>Gửi khiếu nại</h1>
        <label for="msg"><b>Lời Nhắn</b></label>
        <input name="id_user" type="hidden" value="${ContenOfUser.getId()}"/>
        <textarea placeholder="Bạn hãy nhập lời nhắn.." id="msg" name="comment" required></textarea>
        <input name="action" type="hidden" value="report">
        <button  onclick="return confirm('Bạn muốn kiểm tra lại không?');" type="submit" class="btn">Gửi</button>
        <button type="button" class="btn nut-dong-chatbox" onclick="dongForm()">Đóng</button>
    </form>
</div>
