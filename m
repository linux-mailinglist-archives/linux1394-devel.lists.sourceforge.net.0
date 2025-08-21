Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0224FB2E96C
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Aug 2025 02:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kkjzTJOuoGpeoqPOavrEY6FxBqXmBL0LmGxCl2NDgBo=; b=SWQZTjpQvGZQ9lhdYby32U1oA4
	ynb5gdgWsyDBfblipvsQi/ba2NK50bDelHN6SU5hDm7UN1UT2oeCn5whiuHZ77woQd4fgxXfgvzXi
	AnowD9z5jnxzoyFVieV3BbatUgTnVOAA9C9UsyVtJKRocK8LUQuYjHjf3Nxyll2XPf38=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uotCN-0002Aw-Oi;
	Thu, 21 Aug 2025 00:30:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uotCL-0002An-FM
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Aug 2025 00:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y3gqU4SmbBblagmxLkKgp6Bptdbd0oMAoCphalQECBI=; b=Jmbb32XgwuiN36va/QW7yXJDS+
 +PUP2t2s93tPbc6gP+xRXlX1FjRxO2aTcJSG+OoVS0nPQdj6Z8JdMikTPx+7l+EPXIk+w9AmCQZwc
 3US67hrUfmDRoOcsFkYrR4JivMSDdha1l0NfQghMG+TNfNstWrQ8kKY97gW4RpiXEwjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y3gqU4SmbBblagmxLkKgp6Bptdbd0oMAoCphalQECBI=; b=IB+ivgUtVzFpSIOsgJD51jfeiz
 D3ug2lsI4LDFGj/jHWycnp4jOrzcI6dOvn/rIcrQWM2pwbnjqLZHydcGemcAK1V9/x662DorQQzP5
 1+zEjFH3kCrcEfzy4H0IUJqI40SSXOvG44kKXkJUnC8UoRUVcb3QOkfOBkwTGmNS8xSo=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uotCL-0005BP-1Z for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Aug 2025 00:30:33 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 7F0FD14000BE;
 Wed, 20 Aug 2025 20:30:27 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 20 Aug 2025 20:30:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1755736227; x=
 1755822627; bh=Y3gqU4SmbBblagmxLkKgp6Bptdbd0oMAoCphalQECBI=; b=Z
 atSAQS9CSedBqwhF/YHndWSgZj5FaOHiGmKFGR703WQekQUKt7wEhZPXD6geUX9y
 kefKFQ9cv0rS4SZ3g4rJRlofDEcn8VyZ9bSmjztftREhes+0wACXbRArqj1S4VCd
 DijW3hFPb1IPT2+7/6VA+rcBMhlc9vv0HuUEGxPiFULmXUEQzINVNRhqYVpTNHgc
 9Vt3id3ydr+v03Mey4LKA2OX24etg0Qd6AJYacLaHCdT+of8hDRhYXLiaqU+QX6g
 CBluBw/nhTxPlFIFvQ9nPcST3uT69UKJY2tonRb5TzyOSa969pnFmFVxqRcHcTmO
 pEAHTUJB/8WmfhEpsoJ4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1755736227; x=1755822627; bh=Y
 3gqU4SmbBblagmxLkKgp6Bptdbd0oMAoCphalQECBI=; b=BOASutjhosW6V0JB0
 /00WsVVgy6RJVt4CPgnsXjNMXEPMH8N5T6CZYOlUR9ciQDd+s/MzaSAACIuE4IQM
 8dIFeZTplcUVbE8mxX56S2P5zg++raog0Xo+IBFjIXhk8fHcT2RW9H0HU4F/GAXJ
 rwBZzJ7s8MgYvQKtv1tmQwCvhA3t5+Knqt+DGQiy5iNStTKaWvCGM3LSJ5Tpt3tA
 Zk0uxSlzuGWTAREJGUO5+2CyWeg2yoenXCMvVrMRQrygqbuDXWnJTlj69CXrNhv8
 pS5bM/AqENooMiDqU8iomt6JmOJhpjYq1cB3IaWQRlr3xZr05EAb/ZkP7Jlo97j2
 b2z4A==
X-ME-Sender: <xms:o2imaKqcuYBcSlJQv0FRqbA5Vzf6LqRG3xBoVMaF8LSKwjYkj96_nw>
 <xme:o2imaBnuRlQM0svr3LjcVixDoHqaqatzqPEazAwAR07857uysFy2B67oLMKbGNqtf
 HhPVfwxjPBv1h5VEeU>
X-ME-Received: <xmr:o2imaBLCwWbh6XiItLJ4dG6ODmc2F7qoEzE6ACnL7B2sefEd6fo0cYYww9BHxGzAZG91CUCwOvLbMREaBKZ0mqOVxivnCcrcFDEo2KfH_UZ36Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduheelkeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:o2imaGyACDVa2DnvXBtDgs-VIIh0qnANrM_IHe1xNIHKhww47iNItw>
 <xmx:o2imaJutYfUwEIm794xuvxUWVrIKOdJ78qFCN7C9S7--_6t0fl1a9g>
 <xmx:o2imaFs18uVK4MIhQDG6yZktu8H9jR_D091WwzUEIDZvcx042aHzmA>
 <xmx:o2imaGP9voZ_6TZwzSFDhZOiNETZoU2jGUnzmJ8FaRDiKWfM0Bg2qw>
 <xmx:o2imaKu4hhaaLk9bKKxdPjD6Sh4FYD3SEqNggCeVR5zM6QZ-LO7HB-gg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 Aug 2025 20:30:26 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/4] firewire: ohci: remove obsolete module-level debug
 parameter
Date: Thu, 21 Aug 2025 09:30:17 +0900
Message-ID: <20250821003017.186752-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
References: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The module-level debug parameter was added in v2.6.26 by a
 commit ad3c0fe8b8d16 ("firewire: debug interrupt events"). Its functionality
 has long been superseded by tracepoints. This commit removes the module
 parameter, bye. 
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
X-Headers-End: 1uotCL-0005BP-1Z
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

The module-level debug parameter was added in v2.6.26 by a commit
ad3c0fe8b8d16 ("firewire: debug interrupt events"). Its functionality
has long been superseded by tracepoints.

This commit removes the module parameter, bye.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index ae7f75fade8d..c8c5d598e3c8 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -393,11 +393,6 @@ MODULE_PARM_DESC(quirks, "Chip quirks (default = 0"
 	", IR wake unreliable = "	__stringify(QUIRK_IR_WAKE)
 	")");
 
-static int param_debug;
-module_param_named(debug, param_debug, int, 0644);
-MODULE_PARM_DESC(debug, "Verbose logging, deprecated in v6.11 kernel or later. (default = 0"
-	", or a combination, or all = -1)");
-
 static bool param_remote_dma;
 module_param_named(remote_dma, param_remote_dma, bool, 0444);
 MODULE_PARM_DESC(remote_dma, "Enable unfiltered remote DMA (default = N)");
@@ -2017,11 +2012,6 @@ static irqreturn_t irq_handler(int irq, void *data)
 	if (!event || !~event)
 		return IRQ_NONE;
 
-	if (unlikely(param_debug > 0)) {
-		dev_notice_ratelimited(ohci->card.device,
-				       "The debug parameter is superseded by tracepoints events, and deprecated.");
-	}
-
 	/*
 	 * busReset and postedWriteErr events must not be cleared yet
 	 * (OHCI 1.1 clauses 7.2.3.2 and 13.2.8.1)
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
