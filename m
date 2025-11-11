Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4420CC4FFCF
	for <lists+linux1394-devel@lfdr.de>; Tue, 11 Nov 2025 23:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=catXdQHGdR7cqTWYchGBez1xYxLkdzCFlamNzuCGa9M=; b=a+kPbJDoqPY+S7pfhi/3eC8mWC
	WMvWMUkQ90sgYUnglX4aeQT9pUJVBqJVFlAAJsO7gnFC2RMp7wOarLdYr67QyNcxbWAnzNPO7f6ht
	OIbqdkqyDTi6zMuEITW1lAnpPAIQ5p1kOf1Hitm3uKtGNm3PleZxMmInRTQjQk/5+FHc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vIx0l-0003MP-Jz;
	Tue, 11 Nov 2025 22:38:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vIx0j-0003MF-Tt
 for linux1394-devel@lists.sourceforge.net;
 Tue, 11 Nov 2025 22:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kxyRhG8c4DQThr/aSewpp16TI6ayZhIqP+Sg2TBU4pk=; b=MFA/2nhQ6GAtaG/jXbmQ2NO4RZ
 BEimq7X+O5LxsCBtxcQiaAljf23Qkg10/G4/GE47w+cWqHtrXBzMn2pWFIyivA7/DQ5tDpqlxzftS
 TUjrhNT/bC7Uux23jmpXM8M6P+s8aIG2BF483+cqSr/GEM9xCYZFzvyD8XhrAme0/b4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kxyRhG8c4DQThr/aSewpp16TI6ayZhIqP+Sg2TBU4pk=; b=e
 qIL9dg11h0G3O884aDd5DnuBaR8+sYRcqNM4tz8CBVbwU2ZMNbT3CzRGjy8at1s6t/l9qkPWdMuEP
 PsclZziUAODcMZgZWQWbh7vlJ0w9mJRTdUx3NXY3tK12Se0Kg0e6au1J04SMSOe7a4fFdo7sP+LUF
 r7+SheHvZ/Tslb3Q=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIx0i-0003aK-Qe for linux1394-devel@lists.sourceforge.net;
 Tue, 11 Nov 2025 22:38:49 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id 2D514EC0196;
 Tue, 11 Nov 2025 17:38:38 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Tue, 11 Nov 2025 17:38:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1762900718; x=1762987118; bh=kxyRhG8c4D
 QThr/aSewpp16TI6ayZhIqP+Sg2TBU4pk=; b=MoI7HoCTyNmtmsoGfgshL+et6l
 98l4F6dlQC7YWu/qWoM0vL2KKO6vk3dPo/b+oel7AKDBDRrNTcqW8OszpIRU90EU
 bUqtYcqBDIhEXbnJTJbTM7V/c1gXegXrkWwl5kUKX/zCt8v/2aI6GR8mPpgT6rck
 uq9BReFf6UIdk9LFfQP5yH/rG49FTL7rd5VSB2D7QlZZpWjyVoGqs/xgM4/i3+l4
 6JG+5LN2t5cvUf1w04NvpaMc2MOTdNr7Rv8b6iAimE+zK5dggU8R2JgZ5dTLbW4x
 DFh5QX3Qiz8XVR4XKRF1eZemCTAKFskZvgdN12GsrzEfmrSCwT6HKZQKiJ1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1762900718; x=1762987118; bh=kxyRhG8c4DQThr/aSewpp16TI6ayZhIqP+S
 g2TBU4pk=; b=MtoCyJI5G3ZQzcD0fPvKDcy0hgvjOJ5CGEer40iLoEdMp2NoidD
 PZsLHuUqHsnNCBI/6YsGRY/CRm4IOjnFxa/I8glRgdjQS2WQTomYJJny8Rb0rBOS
 Go9YJ3kK/afKGp1pTxcQvxnSC6pQE15YkCKU6wpBe8xhiHk3RZ07DzIIJTJW9dtu
 ro94Szd69oU+EaQJZKJAEW/H83oIIPJ0Wl7og0obuT1lV/qx9SDPqJRNOvrLgXMY
 cuK476khkynl/OctZIalqvS4y8DEGKIYF6qoH2ZMJGpbkOHTFsINT2zIdG4rFs7t
 /kI8ywZDXnDXDwbYlURNK29jlEXeg13ekBw==
X-ME-Sender: <xms:7boTaRcvYts56s8SdHel3I4hBfyw6UqVrM7Gri9oVzZTBAlQtfK91w>
 <xme:7boTadL_KiKrw9I7Yrk7geifiv3GJOeijdm6f11_nCF1rif5CT-C-VDEypToFCikl
 8k0DDFRuzE85IMbX1ks-LmakGEY-0uPOWkPDBz2JUNWCKx6fy0nULc>
X-ME-Received: <xmr:7boTaSEWhAnzgbqrgOGyq0yJyUzJoUglnEUf03oenUCpRMY9x5Gg1poiazbe2TgZPSLLFPQ4WNrYLvynzlecY552wACr2x8OLlmONTSw3vj5MQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvtddvgeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:7boTaXr9Ilskyo6FCxB-KgauiTCImU6Tbb4rlZFca9_kvnpGUakvZg>
 <xmx:7boTabQ7rpEKZTSRej4vJHxJ-e0626joCTiU0-TW9cdyOQ3OeJ86fQ>
 <xmx:7boTaUMblWQD6od3CyAoVZ17DK9f-0HQDOWRSTcpnu-4AqIqGm7APQ>
 <xmx:7boTaePVPDoQhkZEGg2aNq1scxRsUeQLU6vtWGBXZkhjjjjcynuZaw>
 <xmx:7roTaazfQoMoIx6VQloXenXQ6D_BQbHLjaS15hVKZBy_XNRTJu9yVAHT>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 11 Nov 2025 17:38:37 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: abort pending transactions at card removal
Date: Wed, 12 Nov 2025 07:38:34 +0900
Message-ID: <20251111223834.311287-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  IEEE 1394 defines the split, concatenated,
 and unified transaction.
 To support the split transaction, core function uses linked list to maintain
 the transactions waiting for acknowledge packet. After [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vIx0i-0003aK-Qe
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

IEEE 1394 defines the split, concatenated, and unified transaction.
To support the split transaction, core function uses linked list to
maintain the transactions waiting for acknowledge packet. After clearing
sources of hardware interrupts, the acknowledge packet is no longer
handled, therefore it is required to abort the pending transactions.

This commit executes callback with RCODE_CANCELLED for the pending
transactions at card removal.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c        |  1 +
 drivers/firewire/core-transaction.c | 28 ++++++++++++++++++++++++++++
 drivers/firewire/core.h             |  2 ++
 drivers/firewire/ohci.c             |  5 -----
 4 files changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 65bd9db996c0..9869ea3fd9fc 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -790,6 +790,7 @@ void fw_core_remove_card(struct fw_card *card)
 	drain_workqueue(card->isoc_wq);
 	drain_workqueue(card->async_wq);
 	card->driver->disable(card);
+	fw_cancel_pending_transactions(card);
 
 	scoped_guard(spinlock_irqsave, &card->lock)
 		fw_destroy_nodes(card);
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index e80791d6d46b..fe96429ba395 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -51,6 +51,34 @@ static void remove_transaction_entry(struct fw_card *card, struct fw_transaction
 	card->transactions.tlabel_mask &= ~(1ULL << entry->tlabel);
 }
 
+// Must be called without holding card->transactions.lock.
+void fw_cancel_pending_transactions(struct fw_card *card)
+{
+	struct fw_transaction *t, *tmp;
+	LIST_HEAD(pending_list);
+
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+	// local destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->transactions.lock) {
+		list_for_each_entry_safe(t, tmp, &card->transactions.list, link) {
+			if (try_cancel_split_timeout(t))
+				list_move(&t->link, &pending_list);
+		}
+	}
+
+	list_for_each_entry_safe(t, tmp, &pending_list, link) {
+		list_del(&t->link);
+
+		if (!t->with_tstamp) {
+			t->callback.without_tstamp(card, RCODE_CANCELLED, NULL, 0,
+						   t->callback_data);
+		} else {
+			t->callback.with_tstamp(card, RCODE_CANCELLED, t->packet.timestamp, 0,
+						NULL, 0, t->callback_data);
+		}
+	}
+}
+
 // card->transactions.lock must be acquired in advance.
 #define find_and_pop_transaction_entry(card, condition)			\
 ({									\
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 903812b6bb3f..41fb39d9a4e6 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -287,6 +287,8 @@ void fw_fill_response(struct fw_packet *response, u32 *request_header,
 void fw_request_get(struct fw_request *request);
 void fw_request_put(struct fw_request *request);
 
+void fw_cancel_pending_transactions(struct fw_card *card);
+
 // Convert the value of IEEE 1394 CYCLE_TIME register to the format of timeStamp field in
 // descriptors of 1394 OHCI.
 static inline u32 cycle_time_to_ohci_tstamp(u32 tstamp)
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 0625d11dbd74..e3e78dc42530 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3719,11 +3719,6 @@ static void pci_remove(struct pci_dev *dev)
 
 	fw_core_remove_card(&ohci->card);
 
-	/*
-	 * FIXME: Fail all pending packets here, now that the upper
-	 * layers can't queue any more.
-	 */
-
 	software_reset(ohci);
 
 	irq = pci_irq_vector(dev, 0);
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
