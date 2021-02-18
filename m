Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2C731E783
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Feb 2021 09:39:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lCeq4-0002L9-AB; Thu, 18 Feb 2021 08:39:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1lCeq3-0002Kt-K7
 for linux1394-devel@lists.sourceforge.net; Thu, 18 Feb 2021 08:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=53HTeceOJ7n5IN2jPgKEXBaEHMGeopPsZAef5RctHbE=; b=cK8kw49AuJtl4XkcHeXg5Nzl3v
 Sns9EFcHEknSxeQrqXu+Xtl8laV04MDqdz1E+b2hfOdg/1ZQBl0cDKWi+SqyG03QHqwUmwD3dbYaT
 qNK4TM7qJYB1L+/zXIFJK+tPRB2ddei5lifgskZ8sdlU9DBaNjwVpzC4g8tXDWKzm0RQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=53HTeceOJ7n5IN2jPgKEXBaEHMGeopPsZAef5RctHbE=; b=RVB4rJclxn/PRZTrX4nPw43rlW
 cSP1cHqWnpnE2nX822qXj1X8XzNa3Ch7jv8ZCE4C5bMFxdd5J4CwqPn/cJEtnJV3Pm712Qjt8E1wi
 peCA9VBLQdNGX3B5xfYdURBOEACDgfG9R/p8MSgmGepwKCsV7HvFouoSMpSnk9dvvfVE=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lCepw-0000sP-Jm
 for linux1394-devel@lists.sourceforge.net; Thu, 18 Feb 2021 08:39:07 +0000
Date: Thu, 18 Feb 2021 09:38:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1613637530;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=53HTeceOJ7n5IN2jPgKEXBaEHMGeopPsZAef5RctHbE=;
 b=y2x3X+UGj+IJAucA+LwOtHtDAeMIvgiIfgmEH3zNzcwb21Z6Dxvj6Y90ds5PbHdexNBIaI
 eCHbxVIJjZvzinUA2PSP9XC/ISyocFmAJ58/CGs8mllbrvhqWFaibEGxS0Je1aF132fBo4
 swaa9loSSvi5LtNjpvMFRSC+oPOSWEecl2I637bMMmY9LCHT6d36FobThffefJgWlFYcTl
 ekMDpz19XnDCyScocR71ge7EAJw7eoz3Q1B26Q5xNg2bBptmc6FKufkh7fxFXRhr0NkP++
 fYEPRdDWmKymKcJRmJMuZk23LnsTZMf8W8kGmqoURxdrLm54U3dToOQkPWd+Vg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1613637530;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=53HTeceOJ7n5IN2jPgKEXBaEHMGeopPsZAef5RctHbE=;
 b=U7XLoWcuPigjmxd6aHwiV6ANkE8hR7gk64CrwxHEQmhefqpmIfRQjaEVBkmX2TMrSQb0K+
 F+5sYn5+HJwsm2Cg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCl28sXo7LEyCK8y@hmbx>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lCepw-0000sP-Jm
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
Cc: linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 2021-02-14 20:16:02 [+0100], David Runge wrote:
> The current config can be found on the AUR [1].

So this did make a difference. John concluded that it might be related
to the RESET quirk your hardware is having and his does not.

Could you try the patch below? Everything related to canceling tasklets
is broken so it is nothing logterm. It is just to figure out if your
hardware initializes further than it does right now.

------->8-------

Subject: [PATCH] firewire: threaded interrupts

Canceling tasklets is broken.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/firewire/ohci.c | 103 ++++++++++++++++++++++++++++------------
 1 file changed, 73 insertions(+), 30 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 17c9d825188bb..f309c7f69b076 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2000,7 +2000,6 @@ static void bus_reset_work(struct work_struct *work)
 	spin_lock_irq(&ohci->lock);
 
 	ohci->generation = generation;
-	reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
 
 	if (ohci->quirks & QUIRK_RESET_PACKET)
 		ohci->request_generation = generation;
@@ -2041,6 +2040,9 @@ static void bus_reset_work(struct work_struct *work)
 		reg_write(ohci, OHCI1394_PhyReqFilterLoSet, ~0);
 	}
 
+	reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
+	if (param_debug & OHCI_PARAM_DEBUG_BUSRESETS)
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
 	spin_unlock_irq(&ohci->lock);
 
 	if (free_rom)
@@ -2055,66 +2057,81 @@ static void bus_reset_work(struct work_struct *work)
 	ohci->csr_state_setclear_abdicate = false;
 }
 
-static irqreturn_t irq_handler(int irq, void *data)
+static irqreturn_t irq_th_handler(int irq, void *data)
 {
 	struct fw_ohci *ohci = data;
 	u32 event, iso_event;
 	int i;
 
-	event = reg_read(ohci, OHCI1394_IntEventClear);
+	event = reg_read(ohci, OHCI1394_IntEventSet);
 
 	if (!event || !~event)
 		return IRQ_NONE;
 
-	/*
-	 * busReset and postedWriteErr must not be cleared yet
-	 * (OHCI 1.1 clauses 7.2.3.2 and 13.2.8.1)
-	 */
-	reg_write(ohci, OHCI1394_IntEventClear,
-		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
 	log_irqs(ohci, event);
 
-	if (event & OHCI1394_selfIDComplete)
-		queue_work(selfid_workqueue, &ohci->bus_reset_work);
+	if (event & OHCI1394_selfIDComplete) {
+		bus_reset_work(&ohci->bus_reset_work);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_selfIDComplete);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_selfIDComplete);
+	}
 
-	if (event & OHCI1394_RQPkt)
-		tasklet_schedule(&ohci->ar_request_ctx.tasklet);
+	if (event & OHCI1394_RQPkt) {
+		ar_context_tasklet((unsigned long)&ohci->ar_request_ctx);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_RQPkt);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_RQPkt);
+	}
 
-	if (event & OHCI1394_RSPkt)
-		tasklet_schedule(&ohci->ar_response_ctx.tasklet);
+	if (event & OHCI1394_RSPkt) {
+		ar_context_tasklet((unsigned long)&ohci->ar_response_ctx);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_RSPkt);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_RSPkt);
+	}
 
-	if (event & OHCI1394_reqTxComplete)
-		tasklet_schedule(&ohci->at_request_ctx.tasklet);
 
-	if (event & OHCI1394_respTxComplete)
-		tasklet_schedule(&ohci->at_response_ctx.tasklet);
+	if (event & OHCI1394_reqTxComplete) {
+		context_tasklet((unsigned long)&ohci->at_request_ctx);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_reqTxComplete);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_reqTxComplete);
+	}
+
+	if (event & OHCI1394_respTxComplete) {
+		context_tasklet((unsigned long)&ohci->ar_response_ctx);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_respTxComplete);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_respTxComplete);
+	}
+
 
 	if (event & OHCI1394_isochRx) {
 		iso_event = reg_read(ohci, OHCI1394_IsoRecvIntEventClear);
-		reg_write(ohci, OHCI1394_IsoRecvIntEventClear, iso_event);
 
 		while (iso_event) {
 			i = ffs(iso_event) - 1;
-			tasklet_schedule(
-				&ohci->ir_context_list[i].context.tasklet);
+			context_tasklet((unsigned long)&ohci->ir_context_list[i].context);
 			iso_event &= ~(1 << i);
 		}
+		reg_write(ohci, OHCI1394_IsoRecvIntEventClear, iso_event);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_isochRx);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_isochRx);
 	}
 
 	if (event & OHCI1394_isochTx) {
 		iso_event = reg_read(ohci, OHCI1394_IsoXmitIntEventClear);
-		reg_write(ohci, OHCI1394_IsoXmitIntEventClear, iso_event);
 
 		while (iso_event) {
 			i = ffs(iso_event) - 1;
-			tasklet_schedule(
-				&ohci->it_context_list[i].context.tasklet);
+			context_tasklet((unsigned long)&ohci->it_context_list[i].context.tasklet);
 			iso_event &= ~(1 << i);
 		}
+		reg_write(ohci, OHCI1394_IsoXmitIntEventClear, iso_event);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_isochTx);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_isochTx);
 	}
 
 	if (unlikely(event & OHCI1394_regAccessFail))
 		ohci_err(ohci, "register access failure\n");
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_regAccessFail);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_regAccessFail);
 
 	if (unlikely(event & OHCI1394_postedWriteErr)) {
 		reg_read(ohci, OHCI1394_PostedWriteAddressHi);
@@ -2123,6 +2140,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 			  OHCI1394_postedWriteErr);
 		if (printk_ratelimit())
 			ohci_err(ohci, "PCI posted write error\n");
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_postedWriteErr);
 	}
 
 	if (unlikely(event & OHCI1394_cycleTooLong)) {
@@ -2130,6 +2148,8 @@ static irqreturn_t irq_handler(int irq, void *data)
 			ohci_notice(ohci, "isochronous cycle too long\n");
 		reg_write(ohci, OHCI1394_LinkControlSet,
 			  OHCI1394_LinkControl_cycleMaster);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_cycleTooLong);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_cycleTooLong);
 	}
 
 	if (unlikely(event & OHCI1394_cycleInconsistent)) {
@@ -2141,21 +2161,44 @@ static irqreturn_t irq_handler(int irq, void *data)
 		 */
 		if (printk_ratelimit())
 			ohci_notice(ohci, "isochronous cycle inconsistent\n");
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_cycleInconsistent);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_cycleInconsistent);
 	}
 
-	if (unlikely(event & OHCI1394_unrecoverableError))
+	if (unlikely(event & OHCI1394_unrecoverableError)) {
 		handle_dead_contexts(ohci);
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_unrecoverableError);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_unrecoverableError);
+	}
 
 	if (event & OHCI1394_cycle64Seconds) {
 		spin_lock(&ohci->lock);
 		update_bus_time(ohci);
 		spin_unlock(&ohci->lock);
-	} else
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_cycle64Seconds);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_cycle64Seconds);
+	} else {
 		flush_writes(ohci);
+	}
 
 	return IRQ_HANDLED;
 }
 
+static irqreturn_t irq_handler(int irq, void *data)
+{
+	struct fw_ohci *ohci = data;
+	u32 event;
+
+	event = reg_read(ohci, OHCI1394_IntEventClear);
+
+	if (!event || !~event)
+		return IRQ_NONE;
+
+	reg_write(ohci, OHCI1394_IntMaskClear, event);
+
+	return IRQ_WAKE_THREAD;
+}
+
 static int software_reset(struct fw_ohci *ohci)
 {
 	u32 val;
@@ -3689,9 +3732,9 @@ static int pci_probe(struct pci_dev *dev,
 
 	if (!(ohci->quirks & QUIRK_NO_MSI))
 		pci_enable_msi(dev);
-	if (request_irq(dev->irq, irq_handler,
-			pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED,
-			ohci_driver_name, ohci)) {
+	if (request_threaded_irq(dev->irq, irq_handler, irq_th_handler,
+				 pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED,
+				 ohci_driver_name, ohci)) {
 		ohci_err(ohci, "failed to allocate interrupt %d\n", dev->irq);
 		err = -EIO;
 		goto fail_msi;
-- 
2.30.0


Sebastian


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
