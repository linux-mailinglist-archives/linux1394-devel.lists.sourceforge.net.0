Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4B7880E64
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Mar 2024 10:15:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rms2p-0003ju-Iq;
	Wed, 20 Mar 2024 09:15:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rms2o-0003jc-42
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Mar 2024 09:15:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YG8Tjk3VscPgOs1c4NJ2yO7rxWWn/404EbRNLLS2Sz4=; b=awUtzzA2sOzWVt4IvS8xIzDItv
 XSyY9nQ5vfwRC7Yl0BsmRgl7WbPVdnNBBnOAAnSUIDKNqZjOQIXLYKscMGnOlcLStx1/EDfjN0nHR
 N6nVKANFOheNtNF0O0nvSu98Pav6+vvAZSf2aEdRPLfLr9Rj6nYNHjqZgFRjYSmSpK58=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YG8Tjk3VscPgOs1c4NJ2yO7rxWWn/404EbRNLLS2Sz4=; b=T
 Aa1GQ3HiJXk7MjSdLcrZTi7/24iqcWMnlJxbcNPK/UKs2tdjekl5yLuvAtNNiYAHTJJtHfTkmPd0u
 J8kiSR5OHV5BL3KevGBSmmP0CiGBETfVdAINh062y5b8akqyGrNR/oltDQtcZAQ3TGlGb3emCjAaa
 gmVAplFYywDe2YEo=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rms2f-00028I-Kq for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Mar 2024 09:15:34 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 6A2DF1DBB82
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Mar 2024 05:15:22 -0400 (EDT) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:subject:message-id:mime-version:content-type; s=sasl; bh=AAn
 HehYnit6KHQbd71wuLkuSBUCyZxktVU+dK7irJIU=; b=TGk0VQWjdFQTeUQmarr
 LcAtvdpKCmBB2MmXiltc9koavMRBNmcuCHM68pv5pXXHv5BZq0ejaoa8K0IJH7vH
 3e4gih+40St7lXdiJR2nVHqXTRB4EmpQ7BT9H8+7vfIXiVIj+BuLlGonZYcUhxzw
 8DvwPUy9iPErj5snZd2ZBLFA=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 622C81DBB81
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Mar 2024 05:15:22 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id C90091DBB80
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Mar 2024 05:15:21 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id BEB9CC01CE
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Mar 2024 02:15:20 -0700 (PDT)
Date: Wed, 20 Mar 2024 02:15:19 -0700
From: Adam Goldman <adamg@pobox.com>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: mask bus reset interrupts between ISR and
 bottom half
Message-ID: <ZfqpJ061hLtPT8XL@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Pobox-Relay-ID: 60CC2528-E69A-11EE-BD1C-25B3960A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the FireWire OHCI interrupt handler,
 if a bus reset interrupt
 has occurred, mask bus reset interrupts until bus_reset_work has serviced
 and cleared the interrupt. Normally, we always leave bus reset interrupts
 masked. We infer the bus reset from the self-ID interrupt that happens shortly
 thereafter. A scenario where we unmask bus reset interrupts was introduced
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.108.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rms2f-00028I-Kq
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the FireWire OHCI interrupt handler, if a bus reset interrupt has 
occurred, mask bus reset interrupts until bus_reset_work has serviced and 
cleared the interrupt.

Normally, we always leave bus reset interrupts masked. We infer the bus 
reset from the self-ID interrupt that happens shortly thereafter. A 
scenario where we unmask bus reset interrupts was introduced in 2008 in 
a007bb857e0b26f5d8b73c2ff90782d9c0972620: If 
OHCI_PARAM_DEBUG_BUSRESETS (8) is set in the debug parameter bitmask, we 
will unmask bus reset interrupts so we can log them.

irq_handler logs the bus reset interrupt. However, we can't clear the bus 
reset event flag in irq_handler, because we won't service the event until 
later. irq_handler exits with the event flag still set. If the 
corresponding interrupt is still unmasked, the first bus reset will 
usually freeze the system due to irq_handler being called again each 
time it exits. This freeze can be reproduced by loading firewire_ohci 
with "modprobe firewire_ohci debug=-1" (to enable all debugging output). 
Apparently there are also some cases where bus_reset_work will get called 
soon enough to clear the event, and operation will continue normally.

This freeze was first reported a few months after a007bb85 was committed, 
but until now it was never fixed. The debug level could safely be set 
to -1 through sysfs after the module was loaded, but this would be 
ineffectual in logging bus reset interrupts since they were only 
unmasked during initialization.

irq_handler will now leave the event flag set but mask bus reset 
interrupts, so irq_handler won't be called again and there will be no 
freeze. If OHCI_PARAM_DEBUG_BUSRESETS is enabled, bus_reset_work will 
unmask the interrupt after servicing the event, so future interrupts 
will be caught as desired.

As a side effect to this change, OHCI_PARAM_DEBUG_BUSRESETS can now be 
enabled through sysfs in addition to during initial module loading. 
However, when enabled through sysfs, logging of bus reset interrupts will 
be effective only starting with the second bus reset, after 
bus_reset_work has executed.

Signed-off-by: Adam Goldman <adamg@pobox.com>
---

--- linux-6.8-rc1.orig/drivers/firewire/ohci.c	2024-01-21 14:11:32.000000000 -0800
+++ linux-6.8-rc1/drivers/firewire/ohci.c	2024-03-12 01:15:10.000000000 -0700
@@ -2060,6 +2060,8 @@ static void bus_reset_work(struct work_s
 
 	ohci->generation = generation;
 	reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
+	if (param_debug & OHCI_PARAM_DEBUG_BUSRESETS)
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
 
 	if (ohci->quirks & QUIRK_RESET_PACKET)
 		ohci->request_generation = generation;
@@ -2125,12 +2127,14 @@ static irqreturn_t irq_handler(int irq,
 		return IRQ_NONE;
 
 	/*
-	 * busReset and postedWriteErr must not be cleared yet
+	 * busReset and postedWriteErr events must not be cleared yet
 	 * (OHCI 1.1 clauses 7.2.3.2 and 13.2.8.1)
 	 */
 	reg_write(ohci, OHCI1394_IntEventClear,
 		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
 	log_irqs(ohci, event);
+	if (event & OHCI1394_busReset)
+		reg_write(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);
 
 	if (event & OHCI1394_selfIDComplete)
 		queue_work(selfid_workqueue, &ohci->bus_reset_work);



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
