Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4663C008EB
	for <lists+linux1394-devel@lfdr.de>; Thu, 23 Oct 2025 12:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=URGgFyuze/xSYAVIu+QPcYDUOdgBQRXpzPYcwjS5I7o=; b=L7SxrGk71T/e2Po5IL9oYrN3nK
	EL3am887sPCBoTdiXRddi0pzzI/Jfa6Bxe8JRdmUSngdNPSCkytLNAFSRW3uU/bJvtK/1wPcju+dM
	FjK4rMwsx8KILcqsrxwNqazgJ0youYM5zwjsUYINbZHubO0DcOmTTM+z039uTZJ8lV+Y=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vBsnf-0001dk-Cg;
	Thu, 23 Oct 2025 10:44:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vBsne-0001dc-3V
 for linux1394-devel@lists.sourceforge.net;
 Thu, 23 Oct 2025 10:44:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tuhuxGJxdn3r6WOzBBCivadKs4EzZvy7ECdmVrw+DgM=; b=JpqPVlmvsrhPEDjI60i9Q/AJdj
 klXwPytdaapkZ4MM3ZOqMDJDpnTtWdTPgBOvIlRWyZu7fpK6GT2THQM5uODoL7F6zpk+19rE9rs9p
 MmypXgTEvudZmzSmlOtAwdJ8T6oR3jMHP2KFO/o2izAj/drZmna6QYnr6q6n6eL74Ldk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tuhuxGJxdn3r6WOzBBCivadKs4EzZvy7ECdmVrw+DgM=; b=i
 e8zjiljOG1vekvFoycwOrw1nO7HKkn8XGAz74S6Vn8agKJnhd8YTl9ISYcr/ldcERTYsm8c0srU2u
 SVaunqndugwpRwgi0KDrFjRgeZKtJxaAWoo71yNuag/I1LZMKoS9gllQkUtfeHAbVuIqy6kl/ZEVa
 Rjj31qJDlvB757GU=;
Received: from fout-b2-smtp.messagingengine.com ([202.12.124.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vBsnc-0001sN-Pu for linux1394-devel@lists.sourceforge.net;
 Thu, 23 Oct 2025 10:44:06 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
 by mailfout.stl.internal (Postfix) with ESMTP id C7E701D0016D;
 Thu, 23 Oct 2025 06:43:53 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-10.internal (MEProxy); Thu, 23 Oct 2025 06:43:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1761216233; x=1761302633; bh=tuhuxGJxdn
 3r6WOzBBCivadKs4EzZvy7ECdmVrw+DgM=; b=qMMFwP5zEf8qcWiGYIbwuI7tGu
 21nrNebxrx8nq3NaFg9v8K32fLm2B5PelZEkli9o3M0A80CICFI7uoDTyRu8nXAN
 KzfKIdwiRXTjJN4heFRN8CJC642a8TsbtCeNfG/Z9otyQPc3Ixjp2/r+i0X2UplQ
 aIm2Az6mFdu/NL4CQYwvOSmWsFESbLZQZMjyd1ZBxpt0FbTizZPg0sKUzvngUrSs
 mtyRm3gt+au1gpyF4UG8gfetIIWo34ZPV9N6NzfAJ8BAFLTYcpZvSMm5/f9m9aUe
 wgwXxoLHgbj7l7O63lDPPVmAG0Hy46J8PjkyeTJVfS8k4HUerekjeey5vMJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1761216233; x=1761302633; bh=tuhuxGJxdn3r6WOzBBCivadKs4EzZvy7ECd
 mVrw+DgM=; b=NpoM/RWod8FcQWF9CHr16AVnBNVYrt/3i47fyXo0jIRK5MZ/m5D
 a6Qqhfb9iP/FgH/0xGJKvQw1cRr5VTD3UZcMpE4enC3/PTofoGMbu/iG8EgYoPgZ
 Uivy3Y3Xkl6jSlQpWGtqEQKRLOD1t11188Qk9k7/wwSWRNCyWTNBLxTPUFRL+m7n
 +vOYU0ab0ZbbXDQWxjBlbkLBJ0G1UcAx8btv2Be4qc67fUIEYYkr7ZXfiwhMYvnF
 mGznGbQRH6FBu0FdMociaoirxli3QuI7Tgr32iZCjGUU/tIDZq+hodI5/KxKChah
 00x0UQBQ7o+OcgPD0/QzYX/xslSebig1t+Q==
X-ME-Sender: <xms:6Qb6aP5bBl7lhJdK2fDJO81XUyswstsptBPeAGlBx5h3w_19QZ5wtA>
 <xme:6Qb6aC2oXfnkYyIBcExCwMt4d-qtx_gwBhSVqA4CYAxdQIIS-S70pvqhqiaKnB_Lb
 q0EFjWsB1MSAIjJ-QKbXJkHhIfHPaP_ttmiq_OkCDlSVQeyZhTjCrU>
X-ME-Received: <xmr:6Qb6aOCGO0u4XvS6sB2hAoIsKtczpw6s4jBeRn5f720YD7_mUVSLU7YFGm-OrdHOTnVfUBZJo6Lt6BLwM7kJlNGCfqYTRtKChYxXr1ZcyYj3WA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddugeeivdehucetufdoteggodetrf
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
X-ME-Proxy: <xmx:6Qb6aM2YnbcRcbCjcEuhjwIP1HB90hOM8IR-HRm9Kzqo4cOZ8qbmbg>
 <xmx:6Qb6aAvw8kNSjHOP0s4Fv2i3jhQfrhzbOwP5avErsakKuiQB7-nZgA>
 <xmx:6Qb6aE4OELhUDuWBnNzjhyHj9S0ZZV0vghHc2D2UCH_K1sXb6EJ9vg>
 <xmx:6Qb6aJIzFtTBz5U29GlyRr_S7p4KuqgaT69pX9kkMo54J20GWdDVtg>
 <xmx:6Qb6aAuvs_MfzL9r0T2K_6LO5GdE5pNcPh72yMD4BijwqMcb2mk9BX26>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 23 Oct 2025 06:43:52 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: fix __must_hold() annotation
Date: Thu, 23 Oct 2025 19:43:49 +0900
Message-ID: <20251023104349.415310-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The variable name passed to __must_hold() annotation is
 invalid.
 This commit fixes it. Fixes: 420bd7068cbf ("firewire: core: use spin lock
 specific to transaction") Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-transaction.c | 2 +- 1 file changed, 1 [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [202.12.124.145 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vBsnc-0001sN-Pu
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

The variable name passed to __must_hold() annotation is invalid.

This commit fixes it.

Fixes: 420bd7068cbf ("firewire: core: use spin lock specific to transaction")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index dd3656a0c1ff..c65f491c54d0 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -269,7 +269,7 @@ static void fw_fill_request(struct fw_packet *packet, int tcode, int tlabel,
 }
 
 static int allocate_tlabel(struct fw_card *card)
-__must_hold(&card->transactions_lock)
+__must_hold(&card->transactions.lock)
 {
 	int tlabel;
 

base-commit: 211ddde0823f1442e4ad052a2f30f050145ccada
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
