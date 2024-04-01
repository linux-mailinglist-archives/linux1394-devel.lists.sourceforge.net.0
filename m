Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA494893AD0
	for <lists+linux1394-devel@lfdr.de>; Mon,  1 Apr 2024 14:12:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rrGWT-00053f-B2;
	Mon, 01 Apr 2024 12:12:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rrGWR-00053O-BT
 for linux1394-devel@lists.sourceforge.net;
 Mon, 01 Apr 2024 12:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3tseEkYxfsWFCYTT9gGvEvDc3BMkqs5rodTIypP9LjI=; b=mKISGNNz+0KMlUoMMN8AXSYrR8
 UJxkJfnGtdY+UpbCWmdsLhKr0D4RM0L87SRkWOsmcJzFNL/HUrTHgxpl6NWnutIsAI1bOr7vJsabI
 1vVSOQj0OE0MYXWd+zEz08T4l/IQhg6K7n2LGbee946ST7k64awI59CVRAjPlN/x/HBY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3tseEkYxfsWFCYTT9gGvEvDc3BMkqs5rodTIypP9LjI=; b=W
 kLmEWRq598/5GTwWIILNXBbqUe4UcHS4936YXmt5UceYbPQG1v7llsyJ/FMmGSpyXCxCKYokylXwT
 gSFGBd8RC1CzLzX8JPWyJtQvZFxAU/XORrPJs7l3lI9tZvfDJtV1vyAV2ujErvoYpCqy41can3vKN
 54cPq8LidOHYJtx4=;
Received: from wfhigh3-smtp.messagingengine.com ([64.147.123.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rrGWN-0003q8-SA for linux1394-devel@lists.sourceforge.net;
 Mon, 01 Apr 2024 12:12:20 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.west.internal (Postfix) with ESMTP id 496E31800100;
 Mon,  1 Apr 2024 08:12:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 01 Apr 2024 08:12:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1711973524; x=1712059924; bh=3tseEkYxfs
 WFCYTT9gGvEvDc3BMkqs5rodTIypP9LjI=; b=lafkyf0jIT9O8ms5H0O8IY+JYF
 Hc87jDnB4UuuPy/g3uEJlcyEShPl0RZHvrk0tzMi6jUs9sfNT2bs3CUklf46pG/V
 HR3ElwJK1MDHCcmr4oZ+whp1CsUh3rDk3gf6HWivF5dbHDktXdUL3VonkKPLshRT
 grugrPXyR15nV4UXymEOPHsN+roK+fvHa2WMtMSdkDafhGAxwH0vQg47ZsRpYUj9
 hFU0071+77kR48jk8o1QAOCO6tN4fY/jqxXkB7sFnBm2VZldxSUMJRaU14mc4Z65
 Bunu2q3rzaE5pFgH1uLBZuLStv0a729hOshNsHMKMvmbPlaq2jkhpuTW/qrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711973524; x=1712059924; bh=3tseEkYxfsWFCYTT9gGvEvDc3BMk
 qs5rodTIypP9LjI=; b=bm5NjL1eq1+aDlNI3foz8RqPIRfnx5MOHYFtxhzJ27xf
 UAXyBH5P3+9gppWf9AerxyyrGxZXPhqICTyZQL/ZV3C3x8WLHpNYSd6jo5zWaRa6
 gIeOTw8CjlpucEUEJAkn7+mgKyviZSl5+l2r7f88uJPIcrfgrgMxIre9BW4/TR1m
 kiMyHpHQdAQtxyqG+Gl8inoXVLzk91ICT7iuGM+p4Vhvhb3W1pkkR6x24Bk4XnF2
 GA866IYM6Ai/HD8Z33pw62j9HlD6mDiJ3cbPn6xzj0TZaRGP3T+xW+7mDU9sfK3e
 s8ZciTSl+wckAXqkyDDz9szGcGXfQXecdmVNpdLQbQ==
X-ME-Sender: <xms:lKQKZj00QKqC0aX9KP1QAdVp0kwXLOhysiokr3mI9lOAy0S4mcVE6A>
 <xme:lKQKZiEod4IddlVsCFz1S6jVjUPKJyRz2B4Iy-wpPUnYH46mMgnjxzXaDMi-RJU15
 yQZL8J7Q4nV2gGsay4>
X-ME-Received: <xmr:lKQKZj4Uli4Vvbupa_eswaM3-rVyFvAmE6R6OrTyTycHfmfTwVnUHP-0MAtE_8BKmATUchlxa0dw6IRcVhA0wUlYrABepVtrIgQ9dQWkf_XA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeftddggeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:lKQKZo2-IV5t4j5QpU-TrrOLIkCP0H2Qmng5pHkSBYpuFmBbDSb6Xw>
 <xmx:lKQKZmGU0JH3Aoh9tcm3Qayy85olT0hmXCYNyujvuh26FKTzk8xscA>
 <xmx:lKQKZp_vcOPUirOg2O3oQ-HMWikwK8eZDFDSc7xGRDCi5KV5lOkDCQ>
 <xmx:lKQKZjlykInfpL2ihrn4OrGtLkXwoMVoYvt9g7S4maBLh8G4sVqPtw>
 <xmx:lKQKZiivvrALG5CtgtlXlmSzLBfJCwiIfBD83EjMPxTsH__LWN6gEl4EOY4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Apr 2024 08:12:03 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: always handle IRQ event for bus reset
Date: Mon,  1 Apr 2024 21:11:59 +0900
Message-ID: <20240401121200.220013-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the former commit,
 the spurious interrupt events are suppressed
 as possible, when masking the expected interrupts events for bus reset. The
 change was written to be less intrusive, thus it does not [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.154 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rrGWN-0003q8-SA
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

In the former commit, the spurious interrupt events are suppressed as
possible, when masking the expected interrupts events for bus reset. The
change was written to be less intrusive, thus it does not work at the
first event of bus reset. However, it has few trouble to make it work at
the first event.

This commit is to mask the interrupt events as a default for the purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 38d19410a2be..4e86205f81bf 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2060,8 +2060,7 @@ static void bus_reset_work(struct work_struct *work)
 
 	ohci->generation = generation;
 	reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
-	if (param_debug & OHCI_PARAM_DEBUG_BUSRESETS)
-		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
+	reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
 
 	if (ohci->quirks & QUIRK_RESET_PACKET)
 		ohci->request_generation = generation;
@@ -2133,6 +2132,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 	reg_write(ohci, OHCI1394_IntEventClear,
 		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
 	log_irqs(ohci, event);
+	// The flag is masked again at bus_reset_work() scheduled by selfID event.
 	if (event & OHCI1394_busReset)
 		reg_write(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);
 
@@ -2472,9 +2472,8 @@ static int ohci_enable(struct fw_card *card,
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
