Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28045B2E96D
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Aug 2025 02:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hGABkfPSNKGAJ3qSUibf+dmJ+CpUWOvKFPtNdIm+xqs=; b=XvfUwVTl13FueFSRMymxGIyy49
	ToY2/2W7cTTBdD5jK0Ef5jKaU0xy/LX6VRLZy4HmbHuPs+wPPowzvH7xd6Ii5hK7yajRaVNTz+1Cd
	Or52Wa/IxpDpwmBcDzs38w/5ZquINSUsrhkKqtwz5xyXJIlDfeGomgVJfnvuPvC2bDbQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uotCN-0003Im-RB;
	Thu, 21 Aug 2025 00:30:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uotCL-0003IP-Sm
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Aug 2025 00:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q8zu4VWXyIevjukySC25gkI6lGHvLvrvS0El5rB82bQ=; b=Q7iCPFR6StN7G3uX9w5CLEj61y
 OWgejW7YFNqUHznFYylES/ywtgWOz0s25xx2U4VaB2U8B7DvpKnuWJg8eEvJcfwx28Yfw8XCBWnCz
 Mo7LnD8U5+VThWvvj8tqXkqe1XpQSGYPkBLR5v/TdcmVRFfAMHaUDW3fIdoGClpLLqUM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q8zu4VWXyIevjukySC25gkI6lGHvLvrvS0El5rB82bQ=; b=CIABYrhGdSdQCjS2wPL3HhgIEE
 AVQew+SOmIMbR6+E2lV/gsOo8owYKdbPlTcz85AwP/131WxvyPLurnOvY3wH/QkPpqGzDtHGCPMaY
 K8FgEG/1CdTZMidwH8Y8Z6fjQPEuqF7qOQoEhyCBnYqSYT5lf4qyfoQXsJJV+z5kzYak=;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uotCL-0005BR-Tk for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Aug 2025 00:30:34 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id 5F9DDEC012D;
 Wed, 20 Aug 2025 20:30:23 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Wed, 20 Aug 2025 20:30:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1755736223; x=
 1755822623; bh=q8zu4VWXyIevjukySC25gkI6lGHvLvrvS0El5rB82bQ=; b=P
 gGioA746gOHDK6lr7f9AxhREk2c0WjEBv2uVmfoX3ytkRxeQ4IcqNz+57DvXJjlE
 ucIiNOHLt+vBWvXvLxdc4ImtnHPS/rSuFsz9nmheGEDnfHPnHSEizP4kn8ElarCf
 uvsKUZ3lgRFVVD/En/ZwV8Xgb5h2qRzWQ23R3Vn5Xgwva190rWGeRcAN/muc0LvH
 kIa/iQe+zDbFHfs+9k2TAJE/CgzqtQosWQ4Ihvfb09kxAl9l4FoJfQE2EpyG6i85
 7tR3Uvdx2dB4v7sNiWmTZalkEdqbfcNIT7NTXp+xDEMIQsH5nI59raoPqNSXayDH
 brQSFlztfmayazfqnhQBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1755736223; x=1755822623; bh=q
 8zu4VWXyIevjukySC25gkI6lGHvLvrvS0El5rB82bQ=; b=Sj0OllW5zy9N6GScC
 2QUxt9BQy60pk5+aCSHpn21QTJKbDftSk1YxZmcmTiPbDU1PS7jPRm67LL4Ff9od
 4fZj+ExdHrII6zKY/qhnlYu3Mk59epXsHes3Tc1S6Sr9p7bXmj04Mx/4u+BoaqJ7
 AaO4fV5yAIvA/yDEpChy+cwFagj1XME8nYTdedgqCMCbY3DbuHahR0OFir7LsnDc
 X821dkIOBmx1bmjtuRwwUZOCNEeQdT6kexFzc3rqXyPmmLKqRFA405WiUGl/sFQP
 /RVuZRKTZkknvGEplRpKHxmAFI2LBDDs+dZMK0cu9PernNEaiCunwQKG6MPoKP50
 DFdPg==
X-ME-Sender: <xms:n2imaAZyeblFLCOw_7MFp8msBm0g-1L3ZLXjGIGkOamhcLp8RmFLKA>
 <xme:n2imaEVudVC35FLGxGe4E53cNrakGwQledP-xBYVYRyhbHFAoWH8s6vAew0JGF2AA
 LWY3Oe-bKiV1WdvYfQ>
X-ME-Received: <xmr:n2imaM7cRd4RdBR5eGCM53UD_ZBE5Vt49pOO1XOdlQPCvaFAIfSJQFWAy_-v-Th_t2PSMQZvHSaH_T1lVYHok0X1IWUYrdvhjDIOhQPy_5-E4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduheelkedtucetufdoteggodetrf
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
X-ME-Proxy: <xmx:n2imaHjKnHWxg3_ViRLxwm08iRoTcn1h8ZL9fTKRJsRiqE7wj024TA>
 <xmx:n2imaLf8G1rdDVm97YrnwHStiJQeXMg_kxRVrrwuf4XW-pWRxS8fNg>
 <xmx:n2imaEcMKWLcPFFxGBMzPPXOlvEhSQjZZqNjmw7KHw9JU-leXPAY0A>
 <xmx:n2imaN-HwHim1vA4N2sz01OmO7VFp5Q8VljkvPCbIJp1XpRPX3B5KA>
 <xmx:n2imaOf1fk99YAcJK-hh4VNFo2MUMftIvTWn203WrM9beYHYde8cL0Ru>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 Aug 2025 20:30:22 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/4] firewire: ohci: remove obsolete debug logging for IRQ
 events
Date: Thu, 21 Aug 2025 09:30:14 +0900
Message-ID: <20250821003017.186752-2-o-takashi@sakamocchi.jp>
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
 Content preview: A commit 0d8914165dd1 ("firewire: ohci: add tracepoints event
 for hardIRQ event") added "firewire_ohci:irqs" event in v6.11, which can
 provide equivalent information to the existing debug logging. This commit
 removes the logging. 
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
X-Headers-End: 1uotCL-0005BR-Tk
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

A commit 0d8914165dd1 ("firewire: ohci: add tracepoints event for hardIRQ
event") added "firewire_ohci:irqs" event in v6.11, which can provide
equivalent information to the existing debug logging.

This commit removes the logging.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 34 +---------------------------------
 1 file changed, 1 insertion(+), 33 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 5d8301b0f3aa..d3ed43f4d0c3 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -395,50 +395,18 @@ MODULE_PARM_DESC(quirks, "Chip quirks (default = 0"
 
 #define OHCI_PARAM_DEBUG_AT_AR		1
 #define OHCI_PARAM_DEBUG_SELFIDS	2
-#define OHCI_PARAM_DEBUG_IRQS		4
 
 static int param_debug;
 module_param_named(debug, param_debug, int, 0644);
 MODULE_PARM_DESC(debug, "Verbose logging, deprecated in v6.11 kernel or later. (default = 0"
 	", AT/AR events = "	__stringify(OHCI_PARAM_DEBUG_AT_AR)
 	", self-IDs = "		__stringify(OHCI_PARAM_DEBUG_SELFIDS)
-	", IRQs = "		__stringify(OHCI_PARAM_DEBUG_IRQS)
 	", or a combination, or all = -1)");
 
 static bool param_remote_dma;
 module_param_named(remote_dma, param_remote_dma, bool, 0444);
 MODULE_PARM_DESC(remote_dma, "Enable unfiltered remote DMA (default = N)");
 
-static void log_irqs(struct fw_ohci *ohci, u32 evt)
-{
-	if (likely(!(param_debug & OHCI_PARAM_DEBUG_IRQS)))
-		return;
-
-	ohci_notice(ohci, "IRQ %08x%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\n", evt,
-	    evt & OHCI1394_selfIDComplete	? " selfID"		: "",
-	    evt & OHCI1394_RQPkt		? " AR_req"		: "",
-	    evt & OHCI1394_RSPkt		? " AR_resp"		: "",
-	    evt & OHCI1394_reqTxComplete	? " AT_req"		: "",
-	    evt & OHCI1394_respTxComplete	? " AT_resp"		: "",
-	    evt & OHCI1394_isochRx		? " IR"			: "",
-	    evt & OHCI1394_isochTx		? " IT"			: "",
-	    evt & OHCI1394_postedWriteErr	? " postedWriteErr"	: "",
-	    evt & OHCI1394_cycleTooLong		? " cycleTooLong"	: "",
-	    evt & OHCI1394_cycle64Seconds	? " cycle64Seconds"	: "",
-	    evt & OHCI1394_cycleInconsistent	? " cycleInconsistent"	: "",
-	    evt & OHCI1394_regAccessFail	? " regAccessFail"	: "",
-	    evt & OHCI1394_unrecoverableError	? " unrecoverableError"	: "",
-	    evt & OHCI1394_busReset		? " busReset"		: "",
-	    evt & ~(OHCI1394_selfIDComplete | OHCI1394_RQPkt |
-		    OHCI1394_RSPkt | OHCI1394_reqTxComplete |
-		    OHCI1394_respTxComplete | OHCI1394_isochRx |
-		    OHCI1394_isochTx | OHCI1394_postedWriteErr |
-		    OHCI1394_cycleTooLong | OHCI1394_cycle64Seconds |
-		    OHCI1394_cycleInconsistent |
-		    OHCI1394_regAccessFail | OHCI1394_busReset)
-						? " ?"			: "");
-}
-
 static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 {
 	static const char *const speed[] = {
@@ -2226,7 +2194,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 	reg_write(ohci, OHCI1394_IntEventClear,
 		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
 	trace_irqs(ohci->card.index, event);
-	log_irqs(ohci, event);
+
 	// The flag is masked again at bus_reset_work() scheduled by selfID event.
 	if (event & OHCI1394_busReset)
 		reg_write(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
