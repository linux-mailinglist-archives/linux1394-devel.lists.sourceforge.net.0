Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62846C27BA0
	for <lists+linux1394-devel@lfdr.de>; Sat, 01 Nov 2025 11:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BR4h99RCXFebQUAXxtbAlnBnZkr46j0tQSxW8v3wQg0=; b=eqJ7CXykdQQ3hEwXmNb1F7Iy/y
	Za9fV0Nj3AbJZJ65oMo6/mg+O5NFTzxbpcir+xCc1XYgLZA4LvKyWgYpPZb8HsVzBMyk6xvnhNNl3
	0DJSHqhy0Xtzj2EiBpsuy5l0FGswbFYdRSQAvT3iTnUCuMYmNhqicfp7aKFXX0PprMoU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vF8k2-0003A4-9b;
	Sat, 01 Nov 2025 10:21:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vF8k0-00039t-AP
 for linux1394-devel@lists.sourceforge.net;
 Sat, 01 Nov 2025 10:21:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=77kuYOsBRwvBh/7lbhnKnv+0cwuxlXHkbL+er1/2V50=; b=bJSibuuJ1X3u6DBcODdrI7h7IR
 5GGEMMqNGe7BSWKM4n8np8fwEKLO5qr2OS5B99k+kpXnyDymr4owLD1Z3VuKtyCeZSxD/1DapvGxn
 L/P33teEU69O8k0r0Kz87kjssA5Wps19avbdcdG5vpQBcbEonaLW4It6WhdGW5+jIONE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=77kuYOsBRwvBh/7lbhnKnv+0cwuxlXHkbL+er1/2V50=; b=nPNMNy0elh3rqqp0c7PSgMLa3n
 SI8Rwe6yUwPgQ89pughzLKhWWoBghRE1yryUjpMeldbxIr9Rbh9ykCGPhk6B4Ju1V+35hy4gA+v8L
 PFpaGdcE+wa0UKNvAfQ8eLR6lqwlYsWV54Bs+aAz/NCeIyxHKpua/Qc0GOD/GmOJ6JWw=;
Received: from fhigh-a1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vF8jz-0001pi-QM for linux1394-devel@lists.sourceforge.net;
 Sat, 01 Nov 2025 10:21:48 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 49E6414000EA;
 Sat,  1 Nov 2025 06:21:37 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sat, 01 Nov 2025 06:21:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1761992497; x=
 1762078897; bh=77kuYOsBRwvBh/7lbhnKnv+0cwuxlXHkbL+er1/2V50=; b=V
 YKbdz+C8UkDbhryRUP5JF93fo1N9oYRBi7BntzgH3EHtf0mawF7LnHEqicGRrJGC
 yrJ1Xy99rwRu1TAmfqTz3MHW56a5dLzGByc7jrcwK8Aq9VMicdDwMziPm8M6Is4H
 yLE0FW/aV0vsTtAciFjvLgsd9yzi5tiM0TQLxhPgZLIYQKzUMXr7u6gOhfzOnuGf
 tWeUitShQ3mGNHZMUKJMIyV9ht5V7QwcYvf8L1+5u3/FOEBMsjGT8c8XWzHjoca0
 jsH9n7/yRvv1rdsA6LBtPykoU75uaZwIA/w2PNUWVHVlXx+c4eo+gg4Cpp6k6o3E
 XnwFx86X7qCpUxz5MxN3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1761992497; x=1762078897; bh=7
 7kuYOsBRwvBh/7lbhnKnv+0cwuxlXHkbL+er1/2V50=; b=UKlbrhnYG48DJ+9gq
 aoUHA6mc3hEdAw6jDv4ZFcwJdaYVjP1Fk34U72rucURQmRYt++bK8ef7FmCeMGX3
 6vX82O+kQLG1fT/zipaFKzlP52QkpaCtNqQZ6X7/P/1mqu4NFMK9yNCuqDXLwncg
 GT/y8B4Ng8yTZWTdVDY2GelEMCMB7d1d+8pXv5p8ZJKDOwlbF0TRgPhEp1mUUR0n
 w6qSCAwWJTu+kt5zWiS+5snef/0/6q/GrYu/rbJH/JMIHNhiXgMu+6Ign1WV64TV
 koy/wPrZWi/cEjXS2DZpT4ZNJHWjbL07g5UoWtwyun6chKl7unHHU3XEHCTqE9pW
 CSdGw==
X-ME-Sender: <xms:MN8FaXzI-yy65P8DSyr4lP8I9E2ZnYDNWcHs-Ca5xC4ZlFzYkRnDzg>
 <xme:MN8FadMNft8Xl5eLZfBkwA9CzrOKmsjK5U0MjLxt9e678grheDNHpAnWdreP7VIG2
 KA08unQO3gidqy98K_rg9rV8qhlDuQNk1VYEm4vhnj6IQF_nk75qzA>
X-ME-Received: <xmr:MN8FaY7yYQt45dTRRRkJ0UQ5NtL14HZa3wnl2vjfFQEwmLLlyo7GUA1db7-0i5DoLdX9YwfT_WMVndlG7k1xqRh7UrXIzqqi3KuwqIyrIPsEcKo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujedvuddvucetufdoteggodetrf
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
X-ME-Proxy: <xmx:MN8FaePFHzXGvT17wBh0oXdDKhnk_npk5u4V9WJ1rVbSyY7kqgmnSw>
 <xmx:MN8FaWnmKU24JgME8yaR0Aoue8YzYL98dobEXsyLppgXtOs-XRT_ig>
 <xmx:MN8FaVRod6g_h9KObabGYhLJJJ4jArRj46MrXu6bHnHXBf_G4SSGDA>
 <xmx:MN8FaSDsgDxBxfkIKuioqM5Tm3mEmbRFJE5EJGHJSIrYtRE3ic9XZQ>
 <xmx:Md8FaflZKrpXiT9OtrUViQW6IINAx3E84ZoRjRdg2trhYSPLBuH4Q0rU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 1 Nov 2025 06:21:36 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: core: code refactoring to remove transaction
 entry
Date: Sat,  1 Nov 2025 19:21:30 +0900
Message-ID: <20251101102131.925071-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251101102131.925071-1-o-takashi@sakamocchi.jp>
References: <20251101102131.925071-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The list operation to remove transaction entry appears
 several
 times in transaction implementation and can be replaced with a helper
 function.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-transaction.c
 | 16 ++++++++++------ 1 file changed, 10 insertions(+), 6 deletions(-) 
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
X-Headers-End: 1vF8jz-0001pi-QM
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

The list operation to remove transaction entry appears several times in
transaction implementation and can be replaced with a helper function.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index dd3656a0c1ff..8bd79c3f97f2 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -44,6 +44,13 @@ static int try_cancel_split_timeout(struct fw_transaction *t)
 		return 1;
 }
 
+// card->transactions.lock must be acquired in advance.
+static void remove_transaction_entry(struct fw_card *card, struct fw_transaction *entry)
+{
+	list_del_init(&entry->link);
+	card->transactions.tlabel_mask &= ~(1ULL << entry->tlabel);
+}
+
 static int close_transaction(struct fw_transaction *transaction, struct fw_card *card, int rcode,
 			     u32 response_tstamp)
 {
@@ -55,8 +62,7 @@ static int close_transaction(struct fw_transaction *transaction, struct fw_card
 		list_for_each_entry(iter, &card->transactions.list, link) {
 			if (iter == transaction) {
 				if (try_cancel_split_timeout(iter)) {
-					list_del_init(&iter->link);
-					card->transactions.tlabel_mask &= ~(1ULL << iter->tlabel);
+					remove_transaction_entry(card, iter);
 					t = iter;
 				}
 				break;
@@ -122,8 +128,7 @@ static void split_transaction_timeout_callback(struct timer_list *timer)
 	scoped_guard(spinlock_irqsave, &card->transactions.lock) {
 		if (list_empty(&t->link))
 			return;
-		list_del(&t->link);
-		card->transactions.tlabel_mask &= ~(1ULL << t->tlabel);
+		remove_transaction_entry(card, t);
 	}
 
 	if (!t->with_tstamp) {
@@ -1142,8 +1147,7 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 		list_for_each_entry(iter, &card->transactions.list, link) {
 			if (iter->node_id == source && iter->tlabel == tlabel) {
 				if (try_cancel_split_timeout(iter)) {
-					list_del_init(&iter->link);
-					card->transactions.tlabel_mask &= ~(1ULL << iter->tlabel);
+					remove_transaction_entry(card, iter);
 					t = iter;
 				}
 				break;
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
