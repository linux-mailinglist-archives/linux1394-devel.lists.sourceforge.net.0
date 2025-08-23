Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8E0B32690
	for <lists+linux1394-devel@lfdr.de>; Sat, 23 Aug 2025 05:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QdIoYtypjxVWE2QMtJ5z58Wp/W+XbylkamdoeFze4f4=; b=hIRsnbW49BB20lx0rx6sfHstLZ
	VsApoz+9h4/Fcg3JtVUpg5x5EkKp6zZcz+7VqrcO4jVXyjDU+X/UrZSf4Eqj7Yj0JzLts50AtINhF
	Uep8tatEFTDDSJQxtcdJYejz8pfV6RGyf6evTqKGGDmbcRp82SOYTEHSTeYtWYUUBNsQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1upedz-0007TV-RU;
	Sat, 23 Aug 2025 03:10:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1upedy-0007TL-0q
 for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Aug 2025 03:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3crpEdB7OcyPvu5Wrn8qtd8hvfuYA/uGdo8MouC/JZI=; b=fLbCZi2LvaN0A5Xy4Qn0e+IG63
 7gqbZl5n+/XIsNDh/qgNYTPYt0bu+Ndydpls5aBhhmYGa03GIAq86v/mPRXOQRI1ecQ0nCSr4Z98A
 SrnR/3UFwM/3+tSjZES6zUHarj1KnMf/eoGHuaGdtAClj62PmR1SBf9s712yjoViZprw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3crpEdB7OcyPvu5Wrn8qtd8hvfuYA/uGdo8MouC/JZI=; b=hHh0vBLy1kPa/ousBWGvcJ3dOi
 PoMWP6tvwJezYgmVux8qLdYD1RUB8ksqnlCndDBPeM9TJFVTpFUf+oMC53aNuWQv1q7aglui0m9VY
 MmYf/EQa16Lan++SSKnfJfRFv4AJYGw5V2ledXrXEM2+8eV6MEfnZQWIr9ZHvt7d6rbc=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1upedx-0004UI-AU for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Aug 2025 03:10:13 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id C48E7EC0104;
 Fri, 22 Aug 2025 23:10:02 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Fri, 22 Aug 2025 23:10:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1755918602; x=
 1756005002; bh=3crpEdB7OcyPvu5Wrn8qtd8hvfuYA/uGdo8MouC/JZI=; b=V
 8cqdpZfN5BFwwt3CO8v4HUTUh5AKnVEdUEelf2rbHTA4ljxt3YWZI17RPO4o1Upb
 JLOkUTGTltALiowCMH+e+RzAHVmp/xJGE4vrjn7LmFXOrMtjbbFwBR+SMRE5eyud
 0o10CmUcV7/rRidKqYJTfEnKala7uoZ5e+TWxGJ8i6B5Cy1v3jQRQF4J0GkGuhOJ
 XUBJbwsbhDGQYAzYEYbG+nphhUiBixI3G+ioBxPy6Sy5+pJ04jVazql9MIeHa9hx
 KqCc8gzFnsHVTK4L5rQwKScX+s+4HGKRIahy4QFX0ajTrX4+Yd0ZVqhXuesvPk0G
 8cH7BODRc4bDHkuTnYTGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1755918602; x=1756005002; bh=3
 crpEdB7OcyPvu5Wrn8qtd8hvfuYA/uGdo8MouC/JZI=; b=c96e0ks0hPCjacem9
 D/hoDkY93TDZSB+86o2oJnjewGBV7dcKwelWYUGa58et8llhBmEsoKkzUGENWQpd
 F3aKozywrThfmi0MiSGsVV8ptwUjIeUgzUAM+r/sF/xPlTQxAr3NYPPjdPJsKlga
 S5uFXuS6a62myiqDJFyY+D5vdMZ12spXNbdC9V6k4uzNmWpA+IhjZHpKMhFnAqAt
 uss8aKlV69Y4gDnWAuDyffcrufcuLrd8nl+E8Ps/uR1BEi1UW1z77TiRvOJjPVLq
 hErR5hVBGpESLSSsp+AR0IKtLm0iAfF9gqUSWe9RUlWjzGvBO1VDV2c89yPaInUa
 9TkDQ==
X-ME-Sender: <xms:CjGpaGDb2wY0K8Gf_GNPtLpUCvO_uaYTxt4Fy3vQj1zX8E0dDAmSnQ>
 <xme:CjGpaJcl-9jISRoMJOCVenWuef8CjpzX7lo-7my9tz-37C4y6Cfj8SgVgWiGE-E9_
 aQP3LbsoZoL56lU6mU>
X-ME-Received: <xmr:CjGpaLiWgD2CpTgAskCV-UkQNeBfxVz-nGkO_vvAQDIkx9x4UcDnmBV1RkgutCz-VDuzWAv_4tNa_ur99d8Jf-pgeNAefJmG8IXUz7L-thHyxA>
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
X-ME-Proxy: <xmx:CjGpaBovXhSe9gwfMgWbr0kjuAJmoxojQM33cEgnSJSu2cfPPP0r3g>
 <xmx:CjGpaLFhNfT458DCKPQbPgP326Tgf4s4_S5QT2y5qoXlOpyCotSH_Q>
 <xmx:CjGpaLmmKbJR_XV1j321dMqVZuKyL-VOAOoyX31qGOr33vtXGwPTog>
 <xmx:CjGpaGm23FBEfIqFT57dI6nu7HqEdmPiRs007zD8GC7EB1RXfqif5Q>
 <xmx:CjGpaJHhEOvzqXltqhqrtw1dJJRdW77Je3g1cYD33fjcQNqKr2VtDoCp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 Aug 2025 23:10:01 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/3] firewire: ohci: use threaded IRQ handler to handle
 SelfIDComplete event
Date: Sat, 23 Aug 2025 12:09:53 +0900
Message-ID: <20250823030954.268412-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
References: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The first step maintaining the bus topology is to handle
 SelfIDComplete
 event. This event occurs after initiating bus reset when 1394 OHCI link layer
 is enabled, or when the bus topology changes (e.g. [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [103.168.172.149 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1upedx-0004UI-AU
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

The first step  maintaining the bus topology is to handle SelfIDComplete
event. This event occurs after initiating bus reset when 1394 OHCI link
layer is enabled, or when the bus topology changes (e.g. when a device is
added). Because enumeration of the selfID sequence can take some time, it
should be processed in a bottom half.

Currently, this is done in a module-local workqueue with the
WQ_MEM_RECLAIM flag, to allow invocation during memory reclaim paths. A
threaded IRQ handler is a preferable alternative, as it eliminates the
need to manage workqueue attributes manually.

Although SelfIDComplete events are not so frequent in normal usage,
handling them correctly is critical for proper bus topology management.
This commit switches SelfIDComplete handling to a threaded IRQ handler.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 40 ++++++++++++++++++++++------------------
 1 file changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index b3a187e4cba7..5b16286280e0 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -760,7 +760,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 	 *
 	 * Alas some chips sometimes emit bus reset packets with a
 	 * wrong generation.  We set the correct generation for these
-	 * at a slightly incorrect time (in bus_reset_work).
+	 * at a slightly incorrect time (in handle_selfid_complete_event).
 	 */
 	if (evt == OHCI1394_evt_bus_reset) {
 		if (!(ohci->quirks & QUIRK_RESET_PACKET))
@@ -1830,9 +1830,9 @@ static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
 	return self_id_count;
 }
 
-static void bus_reset_work(struct work_struct *work)
+static irqreturn_t handle_selfid_complete_event(int irq, void *data)
 {
-	struct fw_ohci *ohci = from_work(ohci, work, bus_reset_work);
+	struct fw_ohci *ohci = data;
 	int self_id_count, generation, new_generation, i, j;
 	u32 reg, quadlet;
 	void *free_rom = NULL;
@@ -1843,11 +1843,11 @@ static void bus_reset_work(struct work_struct *work)
 	if (!(reg & OHCI1394_NodeID_idValid)) {
 		ohci_notice(ohci,
 			    "node ID not valid, new bus reset in progress\n");
-		return;
+		goto end;
 	}
 	if ((reg & OHCI1394_NodeID_nodeNumber) == 63) {
 		ohci_notice(ohci, "malconfigured bus\n");
-		return;
+		goto end;
 	}
 	ohci->node_id = reg & (OHCI1394_NodeID_busNumber |
 			       OHCI1394_NodeID_nodeNumber);
@@ -1861,7 +1861,7 @@ static void bus_reset_work(struct work_struct *work)
 	reg = reg_read(ohci, OHCI1394_SelfIDCount);
 	if (ohci1394_self_id_count_is_error(reg)) {
 		ohci_notice(ohci, "self ID receive error\n");
-		return;
+		goto end;
 	}
 
 	trace_self_id_complete(ohci->card.index, reg, ohci->self_id, has_be_header_quirk(ohci));
@@ -1876,7 +1876,7 @@ static void bus_reset_work(struct work_struct *work)
 
 	if (self_id_count > 252) {
 		ohci_notice(ohci, "bad selfIDSize (%08x)\n", reg);
-		return;
+		goto end;
 	}
 
 	quadlet = cond_le32_to_cpu(ohci->self_id[0], has_be_header_quirk(ohci));
@@ -1903,7 +1903,7 @@ static void bus_reset_work(struct work_struct *work)
 
 			ohci_notice(ohci, "bad self ID %d/%d (%08x != ~%08x)\n",
 				    j, self_id_count, id, id2);
-			return;
+			goto end;
 		}
 		ohci->self_id_buffer[j] = id;
 	}
@@ -1913,13 +1913,13 @@ static void bus_reset_work(struct work_struct *work)
 		if (self_id_count < 0) {
 			ohci_notice(ohci,
 				    "could not construct local self ID\n");
-			return;
+			goto end;
 		}
 	}
 
 	if (self_id_count == 0) {
 		ohci_notice(ohci, "no self IDs\n");
-		return;
+		goto end;
 	}
 	rmb();
 
@@ -1941,7 +1941,7 @@ static void bus_reset_work(struct work_struct *work)
 	new_generation = ohci1394_self_id_count_get_generation(reg);
 	if (new_generation != generation) {
 		ohci_notice(ohci, "new bus reset, discarding self ids\n");
-		return;
+		goto end;
 	}
 
 	// FIXME: Document how the locking works.
@@ -2002,6 +2002,8 @@ static void bus_reset_work(struct work_struct *work)
 				 self_id_count, ohci->self_id_buffer,
 				 ohci->csr_state_setclear_abdicate);
 	ohci->csr_state_setclear_abdicate = false;
+end:
+	return IRQ_HANDLED;
 }
 
 static irqreturn_t irq_handler(int irq, void *data)
@@ -2023,13 +2025,10 @@ static irqreturn_t irq_handler(int irq, void *data)
 		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
 	trace_irqs(ohci->card.index, event);
 
-	// The flag is masked again at bus_reset_work() scheduled by selfID event.
+	// The flag is masked again at handle_selfid_complete_event() scheduled by selfID event.
 	if (event & OHCI1394_busReset)
 		reg_write(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);
 
-	if (event & OHCI1394_selfIDComplete)
-		queue_work(selfid_workqueue, &ohci->bus_reset_work);
-
 	if (event & OHCI1394_RQPkt)
 		queue_work(ohci->card.async_wq, &ohci->ar_request_ctx.work);
 
@@ -2100,7 +2099,10 @@ static irqreturn_t irq_handler(int irq, void *data)
 	} else
 		flush_writes(ohci);
 
-	return IRQ_HANDLED;
+	if (event & OHCI1394_selfIDComplete)
+		return IRQ_WAKE_THREAD;
+	else
+		return IRQ_HANDLED;
 }
 
 static int software_reset(struct fw_ohci *ohci)
@@ -2413,7 +2415,7 @@ static int ohci_set_config_rom(struct fw_card *card,
 	 * then set up the real values for the two registers.
 	 *
 	 * We use ohci->lock to avoid racing with the code that sets
-	 * ohci->next_config_rom to NULL (see bus_reset_work).
+	 * ohci->next_config_rom to NULL (see handle_selfid_complete_event).
 	 */
 
 	next_config_rom = dmam_alloc_coherent(ohci->card.device, CONFIG_ROM_SIZE,
@@ -3620,7 +3622,9 @@ static int pci_probe(struct pci_dev *dev,
 		goto fail_msi;
 	}
 
-	err = request_threaded_irq(irq, irq_handler, NULL,
+	// IRQF_ONESHOT is not applied so that any events are handled in the hardIRQ handler during
+	// invoking the threaded IRQ handler for SelfIDComplete event.
+	err = request_threaded_irq(irq, irq_handler, handle_selfid_complete_event,
 				   pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED, ohci_driver_name,
 				   ohci);
 	if (err < 0) {
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
