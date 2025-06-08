Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC4EAD1616
	for <lists+linux1394-devel@lfdr.de>; Mon,  9 Jun 2025 01:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SmYtlkWIhMUBkz74juvtND19MiDKZ6JW6BfUMdEpWxQ=; b=fBC/DpjVDrjtc2T7EJyo03KUVP
	gelsKXgWhaiS5fvhUQ2TrbMkGJhvo0EVlFR446O3U9fDE9LKgqC0T0oCrp3HP8OpKAJZtX7SDcJZO
	Md0jXHyK38XL0sOiWpvJhD+eHammro5484FaCiHzhMk56iy/Pmsx7Wg1MA7wWkgiWf7o=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uOPs6-0001pl-Co;
	Sun, 08 Jun 2025 23:56:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uOPs5-0001pb-81
 for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Jun 2025 23:56:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bNQm/MRDMbbD83iW9zl9AvGib4jDg2NSsHRm/axzsA0=; b=H5ie2i8Q6ldNSQbWgA+Vmj5b3N
 LRiN3UFjZtUQ5qR/+7lmAYKugHdeB59TCAZCXHeNT4Gdw37GqFQgxNW/rk74eBI7PGPuIHVdQnpT+
 dPQ9HT4OKbSNdp17zy+bzBatj98tC0tSAh5Ndd6mTvmRm499IP9EEEHIiSsGpQi4VVyo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bNQm/MRDMbbD83iW9zl9AvGib4jDg2NSsHRm/axzsA0=; b=H
 IK2rCgDTrFz2ix0nw57+3dvGweoNVPvei9vaL59SgHlB7AgImK5XL+wvLolhQdwNp6gZBrdDA9J4L
 AV0FGUjlCvcQcQVQoEKbDkNC1pDc8uEKwVuRKhxcPDWjVSSEhhGIAJUscUmY9JdZaMMQBNiQHRkxY
 6OXD79DYwZ2pZFpg=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOPs4-0001aE-EC for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Jun 2025 23:56:13 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 52FAC2540132;
 Sun,  8 Jun 2025 19:38:15 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sun, 08 Jun 2025 19:38:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1749425895; x=1749512295; bh=bNQm/MRDMb
 bD83iW9zl9AvGib4jDg2NSsHRm/axzsA0=; b=gdFrrAoF5yVIIfbw795hLJT3Hs
 ibVpvgZOLbINZRJjDBAfF+ptj2sBoY4+ga8QVmYwm+qncHta5+41Hb5TWtfCsb97
 HaH20u5IAvzUZwhWYNsWvRvKoApqP0jKMQVOy1NmPdgP0qIT060eqFNRvfUBrZHN
 3NzvqYYQPvets5JQbO/607FHRUvznBULbq+GWTVMB8oJCzQho8mQUdFsmjnRD7Xl
 YHz3y4r8T/4hLsEsrde6H4XyCGCLQc+ZjpqwBftRpF5498YtTJtNpHNn8OYU6xqr
 GSPlSxKwpvpzkwLY0D9Iv6qQoB+k2FJ98ZaynY/vzyzKRqE6nIIk2Pspomfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749425895; x=1749512295; bh=bNQm/MRDMbbD83iW9zl9AvGib4jDg2NSsHR
 m/axzsA0=; b=rLPJNKoYheg0S60SAEGZl4hw8c2vFPAOTFJPdq46+ejdqHZtYIZ
 BBB5ZJ7m6nZnZIr0c4evkymGv1RN37y0HCZ9hONGMFZnhUMTdhRMYPaEXBSFodwm
 f+qGr/cHYuAXMzBykhfYSgQQOmufJKnr3D80fJuog+BbVUKYmoNuWnel+o6Puh1c
 S7glnH5WU2B89IA2H92QS6AuYFzCr2RlNxebCwNNdpn+1WjZfjZe9Unk1hJ0VWBa
 Y3pXJd462tR2AwpDEa0HKFmou6OsZsnZIeHRXSLn5KGxkEpMKiVQXrEMEK/2+G4H
 fe1lZzJTWrNJ6UoHp+9+YQQQI7eJuXp1rQA==
X-ME-Sender: <xms:5h5GaLif3ExJ6XTHAAcD9wZMyS6XwUVEpHbcXqYWVqk9uCSOyf-MoA>
 <xme:5h5GaIBtBQdAaYr43aw562stCUHiLPa5a8KU83mrSFPgK78GTmO-_UJ2g5hQUAaYp
 eqmmXmuMF3_QibQMxw>
X-ME-Received: <xmr:5h5GaLH3EMeSGlTrN8uCzFqiRv9m2csD_SpCHbLsS6TIRKpnTmRRmV842F_GWtw2Wyq-sYkJM18LeY--f4wVI1pgf6GZyit3EOEzwYMq4Mb1g-g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdekhedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveek
 keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhm
 ohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:5x5GaITo0Rr_d0lQw0LyJXxXZZsGcmMXNFuYciqs7PANF1vuf0g6hA>
 <xmx:5x5GaIxcOhD0Tb4aJjQADjlglsEzStZ45-l0FMdg8kfjCUmggRFyzQ>
 <xmx:5x5GaO7L9ZF44cs-hafzEJs7-FSGkZEiR9a2-ZsFzqJyklAP35Aa5Q>
 <xmx:5x5GaNw55dBxc9Qs8iO7rU95cE1TAIxaq3WysIgo-yThAhHZJRwKhA>
 <xmx:5x5GaNiOR4F3pLkAHE9QglnvFDsk5tC8Pn-nI41Am9Ebj372vfkUF7nR>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Jun 2025 19:38:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: use from_work() macro to expand parent
 structure of work_struct
Date: Mon,  9 Jun 2025 08:38:07 +0900
Message-ID: <20250608233808.202355-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: A commit 60b2ebf48526 ("workqueue: Introduce from_work()
 helper
 for cleaner callback declarations") introduces a new macro to retrieve a
 poiner for the parent structure of the work item. It is conveni [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uOPs4-0001aE-EC
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

A commit 60b2ebf48526 ("workqueue: Introduce from_work() helper for cleaner
callback declarations") introduces a new macro to retrieve a poiner for the
parent structure of the work item. It is convenient to reduce input text.

This commit uses the macro in PCI driver for 1394 OHCI.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 27e3e998e6fc..40313a3ec63e 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1190,7 +1190,7 @@ static void context_tasklet(unsigned long data)
 
 static void ohci_isoc_context_work(struct work_struct *work)
 {
-	struct fw_iso_context *base = container_of(work, struct fw_iso_context, work);
+	struct fw_iso_context *base = from_work(base, work, work);
 	struct iso_context *isoc_ctx = container_of(base, struct iso_context, base);
 
 	context_retire_descriptors(&isoc_ctx->context);
@@ -2028,8 +2028,7 @@ static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
 
 static void bus_reset_work(struct work_struct *work)
 {
-	struct fw_ohci *ohci =
-		container_of(work, struct fw_ohci, bus_reset_work);
+	struct fw_ohci *ohci = from_work(ohci, work, bus_reset_work);
 	int self_id_count, generation, new_generation, i, j;
 	u32 reg, quadlet;
 	void *free_rom = NULL;
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
