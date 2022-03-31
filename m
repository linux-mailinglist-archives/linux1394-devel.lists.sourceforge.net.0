Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B0B4EE431
	for <lists+linux1394-devel@lfdr.de>; Fri,  1 Apr 2022 00:37:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1na3PR-00031D-Ns; Thu, 31 Mar 2022 22:36:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jakobkoschel@gmail.com>) id 1na3PQ-000317-JR
 for linux1394-devel@lists.sourceforge.net; Thu, 31 Mar 2022 22:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YRq4/uptx89Q5dmt54exn9uvNfFHwJcIQ3/3peS2CLQ=; b=WqZuXNmwMz20CIvL02UC7yrANN
 eBc7Akf8qYynw89eGVRcXCDw9Km5fTvFhfYiFm5kbiXTgLYUdvNSjzPip7Dd0JEldcRw85cKlsFIO
 IMlOrX+YAUFeFH+tK7N/8qIkAY4yMz3aV4WRnRe4Wj1f0l7wB4Wms8MfTTZR+E/yUiKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YRq4/uptx89Q5dmt54exn9uvNfFHwJcIQ3/3peS2CLQ=; b=V
 3IZA1hqDZ8W7teaHQv0Mq6p53bsHShydIfJUR0pxbKytJOnoYd6+PjF1nnDgzYjo9Dexo2uubtUbw
 YYRoc8BqVB9q7Nodi9UrAwH9NX4bdxUK+VPx7U54BviIoZHsJjZmdoTTtZVbBvbTcySpL2Q6AuT1O
 I0KeAB4Z32JSsvQs=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1na3PO-0006XG-Bg
 for linux1394-devel@lists.sourceforge.net; Thu, 31 Mar 2022 22:36:50 +0000
Received: by mail-ed1-f52.google.com with SMTP id z92so895096ede.13
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 31 Mar 2022 15:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YRq4/uptx89Q5dmt54exn9uvNfFHwJcIQ3/3peS2CLQ=;
 b=A3TTwbL2mbf52k1uMntKOT0GqhYED7GliqL6lrajQvLNr4hOrCye+dTh2ed7JT0aG6
 vrTMT2OQ1C0VCOYtZE/cHdXjuJUpgPCYjfiVi6lSEh0hKBsVNhF49nT5L6mr6ZP6t7mt
 9xd7jDeg/O/tuYWvqQPMYNLrqZIeSBq17DfOGLVIkR6a3G48WrMdMn/R43P6dAPWhy4c
 kul9emkG3sd/2B4zYYU+kpczP968aWHyKE2jH7yCwgrrOqFW4YA9rkOmVYQ12KAKsuFo
 KjvgTrcmPhfQBD0xx1Nasekq0/U5MXc8rYarSqvGxGEyZEwjCkT+PTKxfy0SpRO55shZ
 oFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YRq4/uptx89Q5dmt54exn9uvNfFHwJcIQ3/3peS2CLQ=;
 b=Vx+o41lfiFAdqNCZEHVcsvqxD2+3ERdE5OFmqOQUD/2AtyIXzsnsqlcMGAqFXunS3a
 8hRbfZix4RlHxuCdQTdHDEonLBOcG2HuyKcutrd00TYuagWJ/EbGW5Gk56ZxhQHMlGxE
 vuGUC+2ZkssYuCL4gqejFCvASovpYcueoKeEvo1zZMjmBUaTJ3/bgpnksVSVHoYeNVFU
 NLoRXVF99B1dnMdfGeP05mKf2zrWlznESs/oJqpi7lhHGAaLhKTs27gCHwJqj1HGPBo3
 PfBCqKTyfBxmrZfakUqAH6iP/d1Dh/IsCXdFTUgqVRm0BpSJ9VI/tU/rMbpl19Ou7MKg
 OrnQ==
X-Gm-Message-State: AOAM531Z4kofu6NdLDej8Ubb6K2Ycpn04NMJwO9a/4c9GLzK8Hhkyb8g
 J22VxuRYJQP5rjyNLR+MLD8=
X-Google-Smtp-Source: ABdhPJyzp13/L7RKQKymoX51n4Tgo8NLL/jJ1JPDMkSvf9NAhw7IY9gMOJxfb1BRi9hvEP4BKvOyyw==
X-Received: by 2002:a05:6402:27d0:b0:419:5184:58ae with SMTP id
 c16-20020a05640227d000b00419518458aemr18600878ede.314.1648766203762; 
 Thu, 31 Mar 2022 15:36:43 -0700 (PDT)
Received: from localhost.localdomain (i130160.upc-i.chello.nl.
 [62.195.130.160]) by smtp.googlemail.com with ESMTPSA id
 k19-20020a1709062a5300b006c75a94c587sm282872eje.65.2022.03.31.15.36.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Mar 2022 15:36:43 -0700 (PDT)
From: Jakob Koschel <jakobkoschel@gmail.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: remove check of list iterator against head past the
 loop body
Date: Fri,  1 Apr 2022 00:36:01 +0200
Message-Id: <20220331223601.902329-1-jakobkoschel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: When list_for_each_entry() completes the iteration over the
 whole list without breaking the loop, the iterator value will be a bogus
 pointer computed based on the head element. While it is safe to use the
 pointer
 to determine if it was computed based on the head element,
 either with list_entry_is_head()
 or &pos->member == head, using the iterator variable after the loop shou
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jakobkoschel[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1na3PO-0006XG-Bg
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
Cc: linux-kernel@vger.kernel.org, "Bos, H.J." <h.j.bos@vu.nl>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>,
 Jakob Koschel <jakobkoschel@gmail.com>, linux1394-devel@lists.sourceforge.net,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

When list_for_each_entry() completes the iteration over the whole list
without breaking the loop, the iterator value will be a bogus pointer
computed based on the head element.

While it is safe to use the pointer to determine if it was computed
based on the head element, either with list_entry_is_head() or
&pos->member == head, using the iterator variable after the loop should
be avoided.

In preparation to limit the scope of a list iterator to the list
traversal loop, use a dedicated pointer to point to the found element [1].

Link: https://lore.kernel.org/all/CAHk-=wgRr_D8CB-D9Kg-c=EHreAsk5SqXPwr9Y7k9sA6cWXJ6w@mail.gmail.com/ [1]
Signed-off-by: Jakob Koschel <jakobkoschel@gmail.com>
---
 drivers/firewire/core-transaction.c | 30 +++++++++++++++--------------
 drivers/firewire/sbp2.c             | 13 +++++++------
 2 files changed, 23 insertions(+), 20 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index ac487c96bb71..6c20815cc8d1 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -73,24 +73,25 @@ static int try_cancel_split_timeout(struct fw_transaction *t)
 static int close_transaction(struct fw_transaction *transaction,
 			     struct fw_card *card, int rcode)
 {
-	struct fw_transaction *t;
+	struct fw_transaction *t = NULL, *iter;
 	unsigned long flags;
 
 	spin_lock_irqsave(&card->lock, flags);
-	list_for_each_entry(t, &card->transaction_list, link) {
-		if (t == transaction) {
-			if (!try_cancel_split_timeout(t)) {
+	list_for_each_entry(iter, &card->transaction_list, link) {
+		if (iter == transaction) {
+			if (!try_cancel_split_timeout(iter)) {
 				spin_unlock_irqrestore(&card->lock, flags);
 				goto timed_out;
 			}
-			list_del_init(&t->link);
-			card->tlabel_mask &= ~(1ULL << t->tlabel);
+			list_del_init(&iter->link);
+			card->tlabel_mask &= ~(1ULL << iter->tlabel);
+			t = iter;
 			break;
 		}
 	}
 	spin_unlock_irqrestore(&card->lock, flags);
 
-	if (&t->link != &card->transaction_list) {
+	if (t) {
 		t->callback(card, rcode, NULL, 0, t->callback_data);
 		return 0;
 	}
@@ -935,7 +936,7 @@ EXPORT_SYMBOL(fw_core_handle_request);
 
 void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 {
-	struct fw_transaction *t;
+	struct fw_transaction *t = NULL, *iter;
 	unsigned long flags;
 	u32 *data;
 	size_t data_length;
@@ -947,20 +948,21 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 	rcode	= HEADER_GET_RCODE(p->header[1]);
 
 	spin_lock_irqsave(&card->lock, flags);
-	list_for_each_entry(t, &card->transaction_list, link) {
-		if (t->node_id == source && t->tlabel == tlabel) {
-			if (!try_cancel_split_timeout(t)) {
+	list_for_each_entry(iter, &card->transaction_list, link) {
+		if (iter->node_id == source && iter->tlabel == tlabel) {
+			if (!try_cancel_split_timeout(iter)) {
 				spin_unlock_irqrestore(&card->lock, flags);
 				goto timed_out;
 			}
-			list_del_init(&t->link);
-			card->tlabel_mask &= ~(1ULL << t->tlabel);
+			list_del_init(&iter->link);
+			card->tlabel_mask &= ~(1ULL << iter->tlabel);
+			t = iter;
 			break;
 		}
 	}
 	spin_unlock_irqrestore(&card->lock, flags);
 
-	if (&t->link == &card->transaction_list) {
+	if (!t) {
  timed_out:
 		fw_notice(card, "unsolicited response (source %x, tlabel %x)\n",
 			  source, tlabel);
diff --git a/drivers/firewire/sbp2.c b/drivers/firewire/sbp2.c
index 85cd379fd383..60051c0cabea 100644
--- a/drivers/firewire/sbp2.c
+++ b/drivers/firewire/sbp2.c
@@ -408,7 +408,7 @@ static void sbp2_status_write(struct fw_card *card, struct fw_request *request,
 			      void *payload, size_t length, void *callback_data)
 {
 	struct sbp2_logical_unit *lu = callback_data;
-	struct sbp2_orb *orb;
+	struct sbp2_orb *orb = NULL, *iter;
 	struct sbp2_status status;
 	unsigned long flags;
 
@@ -433,17 +433,18 @@ static void sbp2_status_write(struct fw_card *card, struct fw_request *request,
 
 	/* Lookup the orb corresponding to this status write. */
 	spin_lock_irqsave(&lu->tgt->lock, flags);
-	list_for_each_entry(orb, &lu->orb_list, link) {
+	list_for_each_entry(iter, &lu->orb_list, link) {
 		if (STATUS_GET_ORB_HIGH(status) == 0 &&
-		    STATUS_GET_ORB_LOW(status) == orb->request_bus) {
-			orb->rcode = RCODE_COMPLETE;
-			list_del(&orb->link);
+		    STATUS_GET_ORB_LOW(status) == iter->request_bus) {
+			iter->rcode = RCODE_COMPLETE;
+			list_del(&iter->link);
+			orb = iter;
 			break;
 		}
 	}
 	spin_unlock_irqrestore(&lu->tgt->lock, flags);
 
-	if (&orb->link != &lu->orb_list) {
+	if (orb) {
 		orb->callback(orb, &status);
 		kref_put(&orb->kref, free_orb); /* orb callback reference */
 	} else {

base-commit: f82da161ea75dc4db21b2499e4b1facd36dab275
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
