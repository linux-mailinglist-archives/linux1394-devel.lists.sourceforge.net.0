Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 461A0D0CBCA
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q3KmGzDoHgKy5iTJ7gmYfONgDOCpipSXfoTjRIg1YAQ=; b=dAsBq+iiaaclc+5dYWGPHgPZ2b
	S7Q/9qsJwRf7N7cRWUVzlusvnR4XxNRQoIVPtYHpt/2PbOuLKkVDz6My7tQx96/oRonIX2BSN/Ber
	1PVetqT69noi3s2vJU07g5/7+qLOu5A0aJW+6lVNd4ruy4UWTSerZIJV0J5ccaix65FU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNwz-0003T0-FQ;
	Sat, 10 Jan 2026 01:39:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNwy-0003Sp-BW
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EiYDyRw08I7TcXnhftv0D6o2bdWQLkS+DKUbg4F+khE=; b=IG6M/fSv6bu8psx2EUiqYQ5hsm
 4gX8wIkuHSFLE7Eq+DuGebo5siJTrTCwTy5+VFMpE2vF9U6f/l836BILei6UfKJW64TKMB4e80W5p
 femHrt9AhIU40hXds0qpZrDEYMDQgiTx7O25SzXJAaHwyUK7z/Hk3tKBo9ASHnHAFKGo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EiYDyRw08I7TcXnhftv0D6o2bdWQLkS+DKUbg4F+khE=; b=AD/8sIyDV3NyGWw2jep4cbhraG
 vj68QFNKygzyN298MHn9XNL1ECRyE9qx4jhHMUFVA6finIpfYnjT/3CIbZnxg8Fd/LbfVtnLOUcUA
 ngNPKO9UaBgd7FHKaI6dPR8khj+RM0+j42oiCn92eFWU45LAe8xn/qYZxs9c6d9JdeTg=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNww-0000fd-VF for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:32 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id 6ACB9EC0118;
 Fri,  9 Jan 2026 20:39:20 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Fri, 09 Jan 2026 20:39:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768009160; x=
 1768095560; bh=EiYDyRw08I7TcXnhftv0D6o2bdWQLkS+DKUbg4F+khE=; b=V
 bvXUTPncXp+pTX3CUJ0XqEEBqZUXlmEnWjYOXUYqkoXUV9oOVstiD5I1xfJZPYpq
 JopyJ2aZgHyc24Ix9Rla37Is9GmVtEZN6Ip+9bnjhKpCV84scSpnStwiMak6ZCSo
 0op4eHkFmP5yaVEvVk99Ogf++2ZZUT3u5O0mpSIA0XRM59iRbtIpdMnEd1CY5Mi9
 F9DYLpfI4thvw6zP0bdkyi4qYenbH3uHTYmFKSjYe5OVSKd7nPi5NHac8xg7clhk
 PJojjtFlkoZ7H2qx5/P+AHBcAKGHJsRF/q+hegPRunWsYs3DmJMTIE1ZRxt1Lx0F
 YigQIKdWOJmBkRskkdfZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768009160; x=1768095560; bh=E
 iYDyRw08I7TcXnhftv0D6o2bdWQLkS+DKUbg4F+khE=; b=Eq7KQCO38sW45sR55
 haIKuaszfy5FioIIL+SK9179MM53Qd7v+kn5mcaA6vGTPsPAnmoH49SHUB2H8m4B
 AmMRCVOJTVE/o2VSM/swMxlcprDCRAjzYadGL8UMeElfqyBda53Kv6SyqxVG2IR1
 rC2HiV28jDQ7eT0wYKyR699sRvGx3AqA3BRQkRDz98DqTQLMTPm5YrJZdDdK6sIS
 ppbMhwmGf1/c6KIttcPazKUByah/AaMrA0CubK+1yA12ikLISGgg53P8Wi+BxqBQ
 bcHEBgd88C0oNOJt2P9dV/BiF/0EDnuXoaPpyq2jhW3GMNabUuRMyWv+pGH5awS0
 uiLkQ==
X-ME-Sender: <xms:yK1haRQHc0UkzIS0off29z61-7UIMt3UiP0zmHer5car5aHmQcHrpg>
 <xme:yK1haSh_kLE7LqfRt9L2pFP53pwteBFaWOgwnaowBgCuk8ZDZ5wpFE5aF6u7J0hyh
 lqh_RfGNApx3KidOBichDJgzNAC9XPPtW2TMVigKlJsaccUWfmnLFdA>
X-ME-Received: <xmr:yK1haZ6PBcDM4AXKjb6v8T6f0Fv8uyDj8X-DpR1fgWcTMbr7UAdlncG8aUI2MldnK7-NXcJ34d4oAonpzE-LFYzxCH19nueE4K5B2sGBnVzV>
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
X-ME-Proxy: <xmx:yK1haXCbnzWr0rekE-2auj3d_d6ZtQyfhkmLl3vjXJe_0DkFth2EaQ>
 <xmx:yK1haYbYrhPQbhbxxgx_QmWt2LXFeuMixDQW-jR-ZK2N_f3nns_mdA>
 <xmx:yK1haaZVsapJJ6bKaQ5ywFpGDy1Kk7Mnc6izAf-VIcjYtpb9UaJ_Xw>
 <xmx:yK1haX-pZleV4WGBQnI4pxMANxCaiGTBNvkaDhb-QFcXYsIV4RirbQ>
 <xmx:yK1haZPNTCa_rHxXbirM0lhCQsFxv49fNnc97lF3jt64rcwuTjxEtmSx>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:19 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/8] firewire: core: use common kernel API to allocate and
 release a batch of pages
Date: Sat, 10 Jan 2026 10:39:07 +0900
Message-ID: <20260110013911.19160-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
References: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The pair of alloc_pages_bulk() and release_pages() are
 convenient
 to allocate and release a batch of pages. This commit utilizes the pair to
 maintain pages for isochronous DMA context. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-iso.c | 26 ++++++++++++
 1 file changed, 12 insertions(+), 14 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.149 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1veNww-0000fd-VF
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

The pair of alloc_pages_bulk() and release_pages() are convenient to
allocate and release a batch of pages.

This commit utilizes the pair to maintain pages for isochronous DMA
context.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index e678ffba5de2..f2e35ac7a476 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -31,22 +31,18 @@
 int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count)
 {
 	struct page **page_array __free(kfree) = kcalloc(page_count, sizeof(page_array[0]), GFP_KERNEL);
-	int i;
 
 	if (!page_array)
 		return -ENOMEM;
 
-	for (i = 0; i < page_count; ++i) {
-		struct page *page = alloc_page(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
-
-		if (!page)
-			break;
-		page_array[i] = page;
-	}
-
-	if (i < page_count) {
-		while (i-- > 0)
-			__free_page(page_array[i]);
+	// Retrieve noncontiguous pages. The descriptors for 1394 OHCI isochronous DMA contexts
+	// have a set of address and length per each, while the reason to use pages is the
+	// convenience to map them into virtual address space of user process.
+	unsigned long nr_populated = alloc_pages_bulk(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO,
+						      page_count, page_array);
+	if (nr_populated != page_count) {
+		// Assuming the above call fills page_array sequentially from the beginning.
+		release_pages(page_array, nr_populated);
 		return -ENOMEM;
 	}
 
@@ -64,7 +60,10 @@ int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 
 	buffer->direction = direction;
 
+	// Retrieve DMA mapping addresses for the pages. They are not contiguous. Maintain the cache
+	// coherency for the pages by hand.
 	for (i = 0; i < buffer->page_count; i++) {
+		// The dma_map_phys() with a physical address per page is available here, instead.
 		address = dma_map_page(card->device, buffer->pages[i],
 				       0, PAGE_SIZE, direction);
 		if (dma_mapping_error(card->device, address))
@@ -109,8 +108,7 @@ void fw_iso_buffer_destroy(struct fw_iso_buffer *buffer,
 	}
 
 	if (buffer->pages) {
-		for (int i = 0; i < buffer->page_count; ++i)
-			__free_page(buffer->pages[i]);
+		release_pages(buffer->pages, buffer->page_count);
 		kfree(buffer->pages);
 		buffer->pages = NULL;
 	}
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
