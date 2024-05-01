Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1358B861D
	for <lists+linux1394-devel@lfdr.de>; Wed,  1 May 2024 09:33:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s24Sx-0003Ah-97;
	Wed, 01 May 2024 07:33:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s24Su-0003AZ-MB
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HFcRJRe/Y0MyNFmax3pmYevS0hyOD26+e/Eh8+mPM+k=; b=UzpziR2KUFYVifFjo07l/r98xw
 QLCRW08wZwHWj+YpNB1hLNOYuoTi2G9tvIeA4nm1Yuuc+Rmdg1PyiB3M1krfzlcdRCUK1BucSEhkh
 G9afDnewfIwY5tZ+54x/J5C1IgIPiz4+DBWcbJGudlNSwpDKL0G0pAOtzBNivIAp11Z8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HFcRJRe/Y0MyNFmax3pmYevS0hyOD26+e/Eh8+mPM+k=; b=ZJ6L0VJ1l0DNNyfqeplcZfokGJ
 hNnpJraD6eLOT2Fl7Ic4RGTZT+cHE/KPUnlodu2EEzigzdjMVh1osAskAX0WsVd76Wt71LIPVX2zR
 eoI0OF6nKDCEReKKlhATWfFjqcQATBk3JC3AKa6BTO+6f0zcA7m5rR0M4Mte+50txxo4=;
Received: from wfhigh1-smtp.messagingengine.com ([64.147.123.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s24St-0003V0-Bg for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:20 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.west.internal (Postfix) with ESMTP id 0E4CA180010C;
 Wed,  1 May 2024 03:33:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 01 May 2024 03:33:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714548793; x=
 1714635193; bh=HFcRJRe/Y0MyNFmax3pmYevS0hyOD26+e/Eh8+mPM+k=; b=U
 SG6fP7DGEzjg3GM5cQMBmQl7icOaF4Kr8vqAGctrRZ19aYtUbS6FIEdMAEEateyK
 zs4cGfFotsgz2ZTjFJbIPuaxHXZ6exdS2g1bg5DslJ3MwEcNWpYxN4xSKe26G03O
 T6z3Mmx4Qw7B+TXozQBQlfruoEpOPybze1u2wasKJdCAuHUnqQc5YR42KNUZ/gi9
 U62glcatF9xDpwazXZwlN8StXZzVoeIFXGRe/Tk02NKxu43ctRpu1MwCMAhtHst/
 BsY3LeIf5+HlATZdCUN45S3Chl3/5W9acTULfTw4kkgyBDzoy9FNSBGCHMXp9h7E
 /PbWXR0MvJDee1hNJkPEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714548793; x=
 1714635193; bh=HFcRJRe/Y0MyNFmax3pmYevS0hyOD26+e/Eh8+mPM+k=; b=V
 MgGHrYbm3A2wcOjot7M4DWw9ZQjzU0MsgM4ArYUGqUOjEtTmv9QmSheLIZXtOaGi
 HUeQ1qjx+pOLlPHRIKWE90YjdgouviGs+9HkcijwRfCRviydTs5bJ4fV//VuZecb
 xyF4qf+IcaVhfmfZTc35xdIKhqzjI/+ovyV/O5zVuESCedgiXSySxRjDwslwCsuM
 YSGRA3LLpc1uWV1++dIRTE+Ze9ASExYzryprWz1Sn6+PEAWudIkGDc8wiCpIUKjq
 7Ux1VlGTpQL57yB68HBRpfMv8U758O16iucTEmHlBoqPp9RDHk6rpB7eMueRG8ZR
 2w9Ewx5xATyYIGJXnY4aQ==
X-ME-Sender: <xms:OfAxZru7BsIy0wnDXFb22OYOQBD-vu2kDIWMMztZNypg8qr_k4BX9g>
 <xme:OfAxZscM4ivcpmgFuk8eS_sPFGyml5_ir2EHTBqJUheXpxs9rSdJPJcQEgU7i2AQW
 HS318iBnWFS3ihXzp0>
X-ME-Received: <xmr:OfAxZuySjhcrJNL3tRWi-YYJEMPLIhiujKJ4VahVz3iN0qXGzJmbVyXUw_8dq-do27S8YkKDLS1GWgP89WDK7IamjQBpdv7TOrjPa8A2DOm2gl4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduhedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:OfAxZqMCKH5TOkL7ysKUuNPzojusuYrvvevI3JUQoeCYnx7XpOwpNA>
 <xmx:OfAxZr9V760R1gF37J0E-hcOk9qM5c-hUaCbOIBcb6maJWlyIPzEtQ>
 <xmx:OfAxZqW460R5tjvcIqg_n5iGUXqiy2ahA30FqG9d9PpXpFVfESTzIA>
 <xmx:OfAxZsdt--BybWTe9dvW2OGnXOAbg97thmgf0UfJD-bbFwgCUKI4mg>
 <xmx:OfAxZuatklq3QhtqD_P5MwkwV5T4Sgi4SAWZL2lCPz6kdoltT7oTGGmM>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 May 2024 03:33:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/5] firewire: ohci: obsolete OHCI_PARAM_DEBUG_BUSRESETS from
 debug module parameter
Date: Wed,  1 May 2024 16:32:35 +0900
Message-ID: <20240501073238.72769-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
References: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The OHCI_PARAM_DEBUG_BUSRESETS bit of debug module parameter
 was added at a commit a007bb857e0b ("firewire: fw-ohci: conditionally log
 busReset interrupts"). At the former commit, the bit becomes less meaningful, 
 just to skip logging. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s24St-0003V0-Bg
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

The OHCI_PARAM_DEBUG_BUSRESETS bit of debug module parameter was added at
a commit a007bb857e0b ("firewire: fw-ohci: conditionally log busReset
interrupts").

At the former commit, the bit becomes less meaningful, just to skip
logging.

This commit obsoletes it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index d69629d8ba71..93dca3216e45 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -394,7 +394,6 @@ MODULE_PARM_DESC(quirks, "Chip quirks (default = 0"
 #define OHCI_PARAM_DEBUG_AT_AR		1
 #define OHCI_PARAM_DEBUG_SELFIDS	2
 #define OHCI_PARAM_DEBUG_IRQS		4
-#define OHCI_PARAM_DEBUG_BUSRESETS	8
 
 static int param_debug;
 module_param_named(debug, param_debug, int, 0644);
@@ -402,7 +401,6 @@ MODULE_PARM_DESC(debug, "Verbose logging (default = 0"
 	", AT/AR events = "	__stringify(OHCI_PARAM_DEBUG_AT_AR)
 	", self-IDs = "		__stringify(OHCI_PARAM_DEBUG_SELFIDS)
 	", IRQs = "		__stringify(OHCI_PARAM_DEBUG_IRQS)
-	", busReset events = "	__stringify(OHCI_PARAM_DEBUG_BUSRESETS)
 	", or a combination, or all = -1)");
 
 static bool param_remote_dma;
@@ -411,12 +409,7 @@ MODULE_PARM_DESC(remote_dma, "Enable unfiltered remote DMA (default = N)");
 
 static void log_irqs(struct fw_ohci *ohci, u32 evt)
 {
-	if (likely(!(param_debug &
-			(OHCI_PARAM_DEBUG_IRQS | OHCI_PARAM_DEBUG_BUSRESETS))))
-		return;
-
-	if (!(param_debug & OHCI_PARAM_DEBUG_IRQS) &&
-	    !(evt & OHCI1394_busReset))
+	if (likely(!(param_debug & OHCI_PARAM_DEBUG_IRQS)))
 		return;
 
 	ohci_notice(ohci, "IRQ %08x%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\n", evt,
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
