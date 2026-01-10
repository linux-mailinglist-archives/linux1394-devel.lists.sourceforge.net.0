Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF29CD0CBB6
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aILgq9CrxVLjNrZUB/VucyrrlM5gcnzAclii2AkpVpc=; b=ebGp0X/9fVwrju0IEs55xfDwSz
	/yyL+DSm4uR01pcoriJZ0jS0LqCi+8bZJkh12gq34o2pVs3x+lsCnEoh+YNXe0Nucq0knnHx3WvbV
	sf9rV3gT4k7tB3amzk3m+I5P55kBErvHFHAYAmesZIuDmyxgazq/fmxtAi4e9e4EXs0A=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNwy-0002mM-5u;
	Sat, 10 Jan 2026 01:39:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNww-0002mD-8m
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sVJaivj5Ky8I+xGb1QTAmBOCvix87KiE9SGbed9PRJo=; b=OGjDjnwduK20QCWRJ7oBzBcYST
 AcsyByU790UVWor5pObCT6qTlWq1YT2LjO/KRPc1aGwaPSZ9wTkCW1ceWEKOIEAvHlMlWaprVmRgk
 eRjf89MpjWT8QDIo0k9gpc27CZRZjiQf8KmadMKPyJOTu8c0nTV6mT9vkm+oJHa5rUlg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sVJaivj5Ky8I+xGb1QTAmBOCvix87KiE9SGbed9PRJo=; b=C6JannjIdYJt3g1yGEcyjxNdkF
 BuKAYPZOPPai2T65Vfok37GSG1NiGrumDxB4SMoDkZSXKDyrtSAnp1aAL68lB/0i+jNhONKyjAFp6
 ueZoNy6hxvdDHCaSyJqElN8vgawJBzjprhvwi7Vera7qLAkywV9ecVreU7tRYXIjiZCE=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNwv-0000fa-Pm for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:30 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 2569514000B0;
 Fri,  9 Jan 2026 20:39:19 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-09.internal (MEProxy); Fri, 09 Jan 2026 20:39:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768009159; x=
 1768095559; bh=sVJaivj5Ky8I+xGb1QTAmBOCvix87KiE9SGbed9PRJo=; b=E
 UsZfGgCeltT7thGebvRanVJ+VnZhSdxzeL6Tx8EZbTwNqKTXx3KLeMZmOTno9S31
 kSjcsO8gH4Qzb9tw/RapreydZwSs17tejKTp0hu6bZofh69Uo/esssnUc+IH2yvE
 MF08Cl5S5LRO4MMlm6CU6awrUlFz3zghd/foy8tW9fE/eXy3U4VnjeFPhrqiW50U
 Cq3Yj/mf+/EYnIFpdkLsf3LlW3ohj/2n8mH+rpU1b2QQ+VSG5+t3juWyitaK+nRp
 596pJP//pSmvTMgdukKKaHwWvH9vs/G+nGKtDwRak7x3+feTgxo2u2Yd7vo86GoH
 Ht+njGHUKUgj6ypYXEFLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768009159; x=1768095559; bh=s
 VJaivj5Ky8I+xGb1QTAmBOCvix87KiE9SGbed9PRJo=; b=fre9FhZZ3MGnj72Ge
 wx0xRwA06Gc3XCyAYuSallRcdaI2BNau9wlJfDRnzaaVj7/jzFZxxGN05txKUgPa
 hYm7wR7smd3j1Ux38f4ZrGFQwN0du3IfPiFQxxE/zQu4cxvJ6LuJO5Idh2Kpmmow
 twC5MSWZ1hP5OgAHROFLOl6uV2+7NPfIMqwzm1QIHXzSRUSC82HrWLzO1+8kE3jB
 Ratm6GZ6eK8BwyveT5hlt/Zl1WSfYVIfm/5oT43ovKUt/ONNv2zzhgcUJRuC+nuH
 T/+rJTFEYwH8NsSl+X8gp0HtBJuB2Kh1ttPlUUuwr1xQFIr/sPSFkCwLpkp/pR2q
 juqyQ==
X-ME-Sender: <xms:x61haQv3RqOxBYLj5acOCI-rEEUErQKzLDq9mz1eshEab5DvnJP21g>
 <xme:x61haVOVGXizrx0quK8bFBShrL3XDyhCC2qaYUIRxYBlHGOC9gq2rW6CI9jkIQ7nx
 BWeIiGgODMupyZ5awIwj_OMY7eTIxXKEbK0jihncjd930sg_z2rBLg>
X-ME-Received: <xmr:x61hae2h8it_cpwyzZkHotWWGCP3jhtYRXkhtUQFh0f192941YE3JwCfNoignbvEPo_KCpFtJXYeksT8ySiUWvnLxOn0SjaxhVTFLKHgHfTq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduuddtfeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:x61haRNh14oXKXRk3UUvtPKq5PSQZpi21uR2jNeL889zPr8WVXeKdw>
 <xmx:x61hae1wQgR0oHwdnhIoomTQAVhi7NKlpLEFngI1cqmKtN6M9p66wA>
 <xmx:x61haYHDaYWyiZJPjDCq-62fohKTToXGFfcq6jpWA7LCvBhmF29Ozg>
 <xmx:x61hab4xhFqu4YRaJwkijYn-dGDPef_k0gaTCsUNGfWZLYa_QnArTg>
 <xmx:x61hae5EkEeM2-clmt3xIiBtHmrCltdtU1laZyx3KYSYwyFkZkTTQktu>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:18 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/8] firewire: core: code refactoring with cleanup function
 for isoc pages
Date: Sat, 10 Jan 2026 10:39:06 +0900
Message-ID: <20260110013911.19160-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
References: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit refactors the implementation to allocate pages
 for isochronous DMA contexts with cleanup function. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-iso.c | 34
 ++++++++++++++++++++
 1 file changed, 20 insertions(+), 14 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1veNwv-0000fa-Pm
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
Cc: linux-kernel@vger.kernel.org, jgg@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This commit refactors the implementation to allocate pages for isochronous
DMA contexts with cleanup function.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index a67493862c85..e678ffba5de2 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -30,26 +30,29 @@
 
 int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count)
 {
+	struct page **page_array __free(kfree) = kcalloc(page_count, sizeof(page_array[0]), GFP_KERNEL);
 	int i;
 
-	buffer->page_count = 0;
-	buffer->page_count_mapped = 0;
-	buffer->pages = kmalloc_array(page_count, sizeof(buffer->pages[0]),
-				      GFP_KERNEL);
-	if (buffer->pages == NULL)
+	if (!page_array)
 		return -ENOMEM;
 
-	for (i = 0; i < page_count; i++) {
-		buffer->pages[i] = alloc_page(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
-		if (buffer->pages[i] == NULL)
+	for (i = 0; i < page_count; ++i) {
+		struct page *page = alloc_page(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
+
+		if (!page)
 			break;
+		page_array[i] = page;
 	}
-	buffer->page_count = i;
+
 	if (i < page_count) {
-		fw_iso_buffer_destroy(buffer, NULL);
+		while (i-- > 0)
+			__free_page(page_array[i]);
 		return -ENOMEM;
 	}
 
+	buffer->page_count = page_count;
+	buffer->pages = no_free_ptr(page_array);
+
 	return 0;
 }
 
@@ -104,11 +107,14 @@ void fw_iso_buffer_destroy(struct fw_iso_buffer *buffer,
 		dma_unmap_page(card->device, address,
 			       PAGE_SIZE, buffer->direction);
 	}
-	for (i = 0; i < buffer->page_count; i++)
-		__free_page(buffer->pages[i]);
 
-	kfree(buffer->pages);
-	buffer->pages = NULL;
+	if (buffer->pages) {
+		for (int i = 0; i < buffer->page_count; ++i)
+			__free_page(buffer->pages[i]);
+		kfree(buffer->pages);
+		buffer->pages = NULL;
+	}
+
 	buffer->page_count = 0;
 	buffer->page_count_mapped = 0;
 }
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
