Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D88BB87532
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rOv3jztGgjizVOa5mdF7ImXXtJgXtSm3cCsfFH/Qbt8=; b=NXtRJIro5D3LExju1m+yC+ZypJ
	SQSYfTzgq50KTetvb1nkLe9uJ9zOdQnyRDlRGI/HDmnWm+aBa0ChC6wAlVcs/HER06WPiMc62Cg7i
	5Q7OmgpqUzxUZkCjudboqvMuTJLMigVKqLG3Q59RDGNFvZuVeV4lHxBtLB3+DiAPCh6A=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzNkW-0002Bi-Uh;
	Thu, 18 Sep 2025 23:09:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzNkU-0002BX-20
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cGSw325zHXBQsfMZxMaicImFWwWh5SwcKbn7vbwwNvQ=; b=PrZ0FJPpO4sHboT6Pb4KJ8CVD6
 9Ko+d/9B3DAvOTRsagHDokTH0NsA1WLiTr6EkYgJu0e+hO3g+L6YuBf2NfFTPh3trAZ0rPf2eoanI
 3cIPSqi9XgnZY468Lliu0xVwMh78F7c2yHmJvMlBH6wT5ewLckh7XddPp+YZHoPiQCzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cGSw325zHXBQsfMZxMaicImFWwWh5SwcKbn7vbwwNvQ=; b=T
 VbOONmd2v0meK+v9IwO811Cc9uzGGPuwfjBzmM4EjTUKIxJ372Db2vtH1kKT8YGa36fJ0YA7CcKPo
 wJFa2K4vwUANzfrYYCEqN/glnykRYQz/d6cMjyjHL1HLWEnElL8ohn3nPuo+EUmtqzfDNJaLmfnKS
 8cAzc+k6MMNAWrPU=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzNkS-00017M-K6 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:09 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfout.stl.internal (Postfix) with ESMTP id F30DF1D002C4;
 Thu, 18 Sep 2025 19:09:02 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Thu, 18 Sep 2025 19:09:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1758236942; x=1758323342; bh=cGSw325zHX
 BQsfMZxMaicImFWwWh5SwcKbn7vbwwNvQ=; b=KlIEIrC0Yvrn2fITpO0lJyk8pH
 I5KyDr3pmggrE+4IDk3h+NX8dJFpqBp25t1bRDGtHXrAe6yxHLfpwT/Mtad7WNP2
 7X6zq3kV2H/VyjPL34dGqqpJmeROeNRcSbvLwg/rXY/Rn4PQ0aolxdk4qahawG3K
 cVfs0lbHxnWZlyZXTpNehShteJ5rrmK6dVpyK8hz7qGV7OzJwcfpCO+v/smW2dj+
 MstY1fG+KjTT9gyNUctKYviha1pScOOJfA514OXsl7B6OgnqT4aGRHo8k4TVvwd9
 Pcc68rsOEKeYuBdJZrqO/8Y99wtautGGETEaffKPVgdgQXSdoQDXlAdlbFcA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758236942; x=1758323342; bh=cGSw325zHXBQsfMZxMaicImFWwWh5SwcKbn
 7vbwwNvQ=; b=jmXjB2xF2NljPwTeXjotE3y2HUp4XwtayeEqjTmXiCPGQ+ORbIh
 14t/HfK+fGairjHCbvlZZuDHLUkQnuYoNXJ2aZXrxkTbXrkNFDztCOVmyiXCZFJW
 8rNfYFUlgMyEIFliGo8GYZecfLCY9weqnbEILkRVDKCMvzTtsM1xita+EDo+m6Ei
 Nz6qPZ0Vhwl0uXc0NfS8yk1HMVgOuMxffLNhA4n/RsSas+n0WCVkFhaXbXaXQ2by
 MvFlOnn9X3rX6liQ0DoKeL30BjCbcsO2Z1TqRSfrOeL+kGekLl4fJUv7W3CkkpnY
 aCHSTH5qT7n1TYWHiVPOSNNgkic3XkrCqpQ==
X-ME-Sender: <xms:DpHMaGb9dul8WbKfY2HFiR78zS_mRnPJfNrcdrXv4dckiIEknMGVDw>
 <xme:DpHMaCUGIkdwNVupOQ3VKXgjLzZEC9hAr_x6faa5OFw6HJtwQakl-uIhKT6VhJK7r
 BJfwF2pbh7qODGuLDU>
X-ME-Received: <xmr:DpHMaC7HtTji4WKkWOD5sb9i6E433tTYkqUcKFDxRIMZ-9zQuOKmYylbn2UJWMQTyMbG7pZqnDlJ-of-273eN7SlpP_pATB85iPRdx2dcCJsbdc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeeiudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevkeduhf
 etjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfuihii
 vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmh
 hotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhr
 tghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfh
 horhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhk
 vghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:DpHMaFjVVdT_Uu9V1jgFsbWmVpBBMnbi4KsKj1HIbGnxm1iWdjHceA>
 <xmx:DpHMaBfeKjVxRS8fnzVNU0_BW4Y8QAyq-WY2VclxO8xt-efCkamxFQ>
 <xmx:DpHMaCdCewpdcvp9Jgn64r22gu7RHozHe_yyU1P6Z_71q-XGFcIrFw>
 <xmx:DpHMaD-4qOowbFYvXPIVNEmik3_iv3okm55wJlVovuD2n0FSfIFejg>
 <xmx:DpHMaEckQJMEozEHWXv_B-0L0ZJ3Zf_cQJpAhTzfdKNYQiLhrMu_nICW>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:09:01 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/6] firewire: core: code refactoring for work item of bus
 manager
Date: Fri, 19 Sep 2025 08:08:51 +0900
Message-ID: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The implementation of bus manager work,
 bm_work() function, 
 has many lines for the procedure to contend for bus manager as well as to
 transfer phy configuration packet for root node selection and gap [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uzNkS-00017M-K6
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

The implementation of bus manager work, bm_work() function, has many
lines for the procedure to contend for bus manager as well as to
transfer phy configuration packet for root node selection and gap count
optimization.

This patchset is to refactor the code for the procedure. A new helper
function is added to contend for bus manager. The outcome of contention
is evaluated as a return code of the helper function, then the root node
at next generation is decided. The phy configuration packet is
transferred and generate bus reset lastly.

Takashi Sakamoto (6):
  firewire: core: remove useless generation check
  firewire: core: use switch statement to evaluate transaction result to
    CSR_BUS_MANAGER_ID
  firewire: core: code refactoring for the case of generation mismatch
  firewire: core: code refactoring to split contention procedure for bus
    manager
  firewire: core; eliminate pick_me goto label
  firewire: core: minor code refactoring to delete useless local
    variable

 drivers/firewire/core-card.c | 336 +++++++++++++++++++----------------
 1 file changed, 178 insertions(+), 158 deletions(-)


base-commit: e6d2338b6f3e522872f3a14fcc5e5de2f58bf23b
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
