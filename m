Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5828B8B861E
	for <lists+linux1394-devel@lfdr.de>; Wed,  1 May 2024 09:33:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s24T0-00079U-ST;
	Wed, 01 May 2024 07:33:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s24Sx-00079I-16
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vji99/5fwHT52mv+ugt6zqpbbOZSoA4Zeq3Z+QiUnIM=; b=hTT8m/fGhr6sqzRq3Vf/0Wv1p+
 Tdv+Y3qpJGbyKvSr9u9IRvcgSruofiTMa8G5cAktkqp06uap8wU5AX+ScmkToJh+EdBEcER1XyQP0
 j/50FOtI9Y2BRvn0rDpQO/V3lSxbl/ss44phnIdLGOQZyROQVH6OGJC6hbUELjYUilak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vji99/5fwHT52mv+ugt6zqpbbOZSoA4Zeq3Z+QiUnIM=; b=AuU/9SDeb/LP5WJkktX3nrGrp0
 XmNAn36JDCWb89NYgDN4moei/Gznfu78pyNV3T/iz5Sc6jfp/qv9yuFnqqsD34VoCdjVcKRJFoBR3
 yRcqFldIa/chgZfuSJNazygvgGOloHQ2pHYJqcy9UC/Rv/oN5gQwQHXFgYs2HMmECDto=;
Received: from wfout7-smtp.messagingengine.com ([64.147.123.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s24Sv-0003Vr-UB for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:23 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.west.internal (Postfix) with ESMTP id BE04C1C00102;
 Wed,  1 May 2024 03:33:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 01 May 2024 03:33:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714548791; x=
 1714635191; bh=vji99/5fwHT52mv+ugt6zqpbbOZSoA4Zeq3Z+QiUnIM=; b=f
 RZn50IDPzKCnT10evJnhaZ1XMSky9rBphcABk5RsYgpQlo9j9JOX7W2I2gCASzb6
 6VGRCC52xAG8rlYVFZZeVD5Yj9PGPlfk4AsWGZPJgVFJ/MEsWM92tQQZJIPE+FD9
 pCGZYJFfPtuHRjwXGuXYkEtoaJm9Zk46Ul6QDVS/zlLlZZT1ajepl/7pzFlaeIbM
 MYQ3Pf43Oz3DDwUBRNmVDBgcjSM+aaac53wtQAsS6gSl+aVf18e+y4Gq6fv2eVix
 ZTY+riFpGs1ged0o9qW6/aplaDb+lLwFin1JSpfWIyErYoGdciafFd1VwH3xdhhF
 x8R0lzq8YrwOR3eilHAkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714548791; x=
 1714635191; bh=vji99/5fwHT52mv+ugt6zqpbbOZSoA4Zeq3Z+QiUnIM=; b=e
 hlXrLD9wSymNy2xdSFHwg+G/RbCberV/M4dA7UbcgUbloinuoN8CI6puTJ1DjESk
 tzEaC0CX1MPdDxbF/a+wfnMRPs9DhZR7cFulIzFgTwnK1SAZIKPAIJXOy8DlH/Da
 KMCwuvv5/AwiaWgdGHC7Z/zuyBhYEBcgXUOzwXSOww+Vyw/TkGwMf4cxesDI8r5W
 6wB5e95ox/a+YkEmGKui6gCE+GIDpV6B5kIqFAkGLYQaBmEM6afMxBaZ0pAa5+kg
 Fu8pWUzIEoqAltr7NE2vZYZ1wUsityrcOa2DUCE7yGyqW0J1g+zYfXjeGvUnMf9Y
 RpNm1QAH2Xc+Y8U6n6oZQ==
X-ME-Sender: <xms:N_AxZpnZ3CDr0OEnDRH1e7UdXicJmEEN3idNf_zoi_xw0hEfR26JRA>
 <xme:N_AxZk04iviv-3QIndbUrnm4XvO6gVKv_V7sesE8nHqfNR_ElzD-Lq_ZZlDZ3Nc-p
 zouWQaVke36caugZIc>
X-ME-Received: <xmr:N_AxZvp-y6Xle8fFzfJoFE-bGeOFc2sdbRNLHhT_aZbDB0JIMZSwfD2mKBMLxmRDhA4iQgvziQpWqbIExQBKI2Q_IfNeai8-2HxyvcMZQq2helM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduhedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:N_AxZpkYFYvvOwQciROhgrJgwzv-x_LOtpxqxbtrYNs-J5_Zo5hcZA>
 <xmx:N_AxZn2zZMPE9KrXu25W5Q44p22l5OrpMui0EF8JtPF3ODXwvNyRmw>
 <xmx:N_AxZotWRQnMgVjlih3OaxvmPOAnhdAmP9SPLAPEiRxSBVprvFSn1w>
 <xmx:N_AxZrVMCAOzudnyuWyRZNcKnnwxhFs2noHChU0N_WcrdaAW69JYxg>
 <xmx:N_AxZozib_-jI4XIJFnHT7TB_JcyHaxAW55SEFLnmLVXM6WSnaKA3P2X>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 May 2024 03:33:10 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/5] firewire: ohci: add bus-reset event for initial set of
 handled irq
Date: Wed,  1 May 2024 16:32:34 +0900
Message-ID: <20240501073238.72769-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
References: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the former commits,
 the spurious interrupt events are suppressed
 as possible, by unset bus-reset event from the set of handled irq. The change
 was written with the less-intrusive style, thus it fir [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s24Sv-0003Vr-UB
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

In the former commits, the spurious interrupt events are suppressed as
possible, by unset bus-reset event from the set of handled irq. The change
was written with the less-intrusive style, thus it firstly works at the
second time to handle the event. But it is slightly inconvenient.

This commit adds the event for the initial set of irq to handle. As a
result, the event can be handled even if it is the first time. The change
has a benefit that the OHCI_PARAM_DEBUG_BUSRESETS bit in debug module
parameter is always effective.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 6116153f0ce6..d69629d8ba71 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -394,7 +394,7 @@ MODULE_PARM_DESC(quirks, "Chip quirks (default = 0"
 #define OHCI_PARAM_DEBUG_AT_AR		1
 #define OHCI_PARAM_DEBUG_SELFIDS	2
 #define OHCI_PARAM_DEBUG_IRQS		4
-#define OHCI_PARAM_DEBUG_BUSRESETS	8 /* only effective before chip init */
+#define OHCI_PARAM_DEBUG_BUSRESETS	8
 
 static int param_debug;
 module_param_named(debug, param_debug, int, 0644);
@@ -2062,8 +2062,7 @@ static void bus_reset_work(struct work_struct *work)
 
 	ohci->generation = generation;
 	reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
-	if (param_debug & OHCI_PARAM_DEBUG_BUSRESETS)
-		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
+	reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
 
 	if (ohci->quirks & QUIRK_RESET_PACKET)
 		ohci->request_generation = generation;
@@ -2135,6 +2134,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 	reg_write(ohci, OHCI1394_IntEventClear,
 		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
 	log_irqs(ohci, event);
+	// The flag is masked again at bus_reset_work() scheduled by selfID event.
 	if (event & OHCI1394_busReset)
 		reg_write(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);
 
@@ -2474,9 +2474,8 @@ static int ohci_enable(struct fw_card *card,
 		OHCI1394_cycleInconsistent |
 		OHCI1394_unrecoverableError |
 		OHCI1394_cycleTooLong |
-		OHCI1394_masterIntEnable;
-	if (param_debug & OHCI_PARAM_DEBUG_BUSRESETS)
-		irqs |= OHCI1394_busReset;
+		OHCI1394_masterIntEnable |
+		OHCI1394_busReset;
 	reg_write(ohci, OHCI1394_IntMaskSet, irqs);
 
 	reg_write(ohci, OHCI1394_HCControlSet,
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
