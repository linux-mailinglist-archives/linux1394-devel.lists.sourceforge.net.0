Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86664B3268F
	for <lists+linux1394-devel@lfdr.de>; Sat, 23 Aug 2025 05:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BYNRNjzpSOuCYbJ3ygiNvHAaOeZGlGbY1YwJvF17i2w=; b=JtOh6uRL2pbHNzh8x4XNAfCXQo
	2v7kszosD/jjpzsTvA6XlSp2SzGQEQ+RZeCZUg6orKkhT0XHDEAbHmgC5fQN46BjR40fQto2jSwjP
	dVZFz/9VSpRfL43q2LiMKtO44pCDPHx/iEyQ+OKwJ5hrAL+8yrev44xDBmqCMp2WNB+4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1upedu-0008WI-24;
	Sat, 23 Aug 2025 03:10:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1upeds-0008W8-6W
 for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Aug 2025 03:10:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UyCmahf95MEvBkiDdBnddD8J0Aqng1u+S79mqWwTmJo=; b=kQonPEXihdJ1uarZ3ss6Ujm0Qy
 EEhv+D7DnaZfpj8g6lRGH1ZZSE2jQN7Hz9a20rIecsHGm+L+3L8h8nNHfqCAy/a0oU0jUDyr+AXV5
 3jOUaRkzfn5q1sAhKoUo/XD3ZSkRSBgFYlDtiBNaIxjNnFahGMpOyoD+EJUztlE6D6RQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UyCmahf95MEvBkiDdBnddD8J0Aqng1u+S79mqWwTmJo=; b=KxavmXBkxVF4j3/bdTTvH6VifO
 /Ge/zKbi2j4p9bVBJ18cn+Xnr9PYyxgqHGdpd44gipJx2MCFwPU1CvUurxyTPVYpviIOnWkSBtL2o
 887T4Ya921mubtvGsfBA9A6pdLI21FotYwGZQp7W8Hn5MPC7Vbbn50/4GfFMtxhhzdNA=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1upedq-0004Td-Kl for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Aug 2025 03:10:08 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id F146B14000BB;
 Fri, 22 Aug 2025 23:10:00 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-12.internal (MEProxy); Fri, 22 Aug 2025 23:10:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1755918600; x=
 1756005000; bh=UyCmahf95MEvBkiDdBnddD8J0Aqng1u+S79mqWwTmJo=; b=E
 OKhf6UUL+49WWz0n/HAaw/a5Cm2eNGmh10JmFNgvzwqzXNw916suuHVpJXX5FGYT
 XQs7Evw9+EoSXc5nfdNSgMZYeUKG/Es/iR0wfFtCNCb64vYzz9LjVs51JSFYKY00
 /vaJp3QQIkL97bgdRYM6FT/OalC+aXZSbXVlxnqNL1K6y7reF2eK/GFhsNE2zx81
 tGCj4GziOr469Sf3+D5yEP6oxT3JDv8rHziEM7/ytmBx2/sW3Zm8YADnneaez0ov
 UbbJZiX7P2BZOg++I0hth6U5E6GyXON3m+LAhEDE4vMpuABioHo976L5YfSZZiom
 KeRsWTUX5SMUX0IR6FNew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1755918600; x=1756005000; bh=U
 yCmahf95MEvBkiDdBnddD8J0Aqng1u+S79mqWwTmJo=; b=XGLkJikBJp+9B/rmv
 SD/kShU2tZGxIaLLx1nIIpIiCwk4Pv7gRzcMhHTwsVgaLcf9EmPfqO9WSBO8NNbN
 Qj/h+35zrqTstEOhgYf8cCwUidJNkQ8qDOIhxbutwrwHxpIMBfKS6UacQa+ZeOQD
 m6Nq3F1hMymqfAFK8EYzH7FazEBiSUPHlRDFNnHG/8oZqwCXDWe0BPGD88eVtfcj
 YUWsQH2PJY7Q/z6OKTJL696W8qruOvlwvMPdyKk5yji92Vw1NFgshYHndKoWk21n
 Vjm89U6h3lZMDgr9PHWrYIK5X+FqdwFwA+AyQmaWHFFMEDOrg5WNZw7uzaFp8kUw
 1i7ww==
X-ME-Sender: <xms:CDGpaERDIP_7OwPo67LcH2gMG7VG6ymA8TJShVNsEg5YLxEY9IFozQ>
 <xme:CDGpaKs5ooG9kzNUa8IDbFmwKM9aGC8f-U8uUpqJvChCClZmMDQnkEZNQciGjz1hA
 2eH6lSIPu8a1oNbZCY>
X-ME-Received: <xmr:CDGpaDwbHgO5atUqyzo7t5XnyVrcXykYVAKdxGMvT6V856QCSKwdheIm4P5WjQY-ikqaV1F68UF0mMT68rj8AE7DhH430Ot8V33acLSim3WrRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduieehhedvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:CDGpaE4zLl-qEA8ovSINRR5zffgEivPPN6or140QbO2DQ_3TwgH6dA>
 <xmx:CDGpaNXjfapXWWHH8WPXz0oEQjmS7Hz61MAvORh9xkvjTPz-uZ5O6w>
 <xmx:CDGpaA1oJaXnp3BnRJ1n4nJNTozc6enrI5j99YLMNND4nYPxxYy49A>
 <xmx:CDGpaC1_Lwdrp7hvg7lOLneSJZQrc1kkYEekcwKpjZ4NYyjig-V1Jg>
 <xmx:CDGpaJU7t179NFgTAVEavUmR1euwkPPuNsqQzAlefX83LlPtG5mgqgPa>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 Aug 2025 23:09:59 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/3] firewire: ohci: move self_id_complete tracepoint after
 validating register
Date: Sat, 23 Aug 2025 12:09:52 +0900
Message-ID: <20250823030954.268412-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
References: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The value of OHCI1394_SelfIDCount register includes an
 error-indicating
 bit. It is safer to place the tracepoint probe after validating the register
 value. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/ohci.c
 | 12 ++++-------- 1 file changed, 4 insertions(+), 8 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1upedq-0004Td-Kl
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

The value of OHCI1394_SelfIDCount register includes an error-indicating
bit. It is safer to place the tracepoint probe after validating the
register value.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index c8c5d598e3c8..b3a187e4cba7 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1863,6 +1863,9 @@ static void bus_reset_work(struct work_struct *work)
 		ohci_notice(ohci, "self ID receive error\n");
 		return;
 	}
+
+	trace_self_id_complete(ohci->card.index, reg, ohci->self_id, has_be_header_quirk(ohci));
+
 	/*
 	 * The count in the SelfIDCount register is the number of
 	 * bytes in the self ID receive buffer.  Since we also receive
@@ -2024,15 +2027,8 @@ static irqreturn_t irq_handler(int irq, void *data)
 	if (event & OHCI1394_busReset)
 		reg_write(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);
 
-	if (event & OHCI1394_selfIDComplete) {
-		if (trace_self_id_complete_enabled()) {
-			u32 reg = reg_read(ohci, OHCI1394_SelfIDCount);
-
-			trace_self_id_complete(ohci->card.index, reg, ohci->self_id,
-					       has_be_header_quirk(ohci));
-		}
+	if (event & OHCI1394_selfIDComplete)
 		queue_work(selfid_workqueue, &ohci->bus_reset_work);
-	}
 
 	if (event & OHCI1394_RQPkt)
 		queue_work(ohci->card.async_wq, &ohci->ar_request_ctx.work);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
