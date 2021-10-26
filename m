Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A0143B8F0
	for <lists+linux1394-devel@lfdr.de>; Tue, 26 Oct 2021 20:05:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mfQod-0005XB-Qw; Tue, 26 Oct 2021 18:04:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kuba@kernel.org>) id 1mfQoP-0005VJ-VI
 for linux1394-devel@lists.sourceforge.net; Tue, 26 Oct 2021 18:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qmFnyCpUkng2rcTVNsMfJ7Rz4FSQSYSYY0wDDjvmLTQ=; b=iJRm+O+M8A62n26b+StELOJdUJ
 KZrBDZ/T8f0Br/cmkIYntkCkE/b4JeK5mJ5+t3ZRJuPJZyU5AYjW0btIHZU2dqm0FLXCFq3K3+fnK
 H9cHvb7fyY3qOjzHLpoNVpzp+QAAjlHm1phGb1Xtp3wkxi2Bh5bYXINSOzsbzR7ymLh8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qmFnyCpUkng2rcTVNsMfJ7Rz4FSQSYSYY0wDDjvmLTQ=; b=M
 BiSVg7YEqFdkL4yaFgI1f4gBHxxK3FRtjNEw91OQa5DRnsNnLBjd2AGZUNWrZYVc+NnyQ+eiFyWhi
 FiGhpPPHSvdhD32Yhlcd70aoLawu0puS0ucrA8YKWCq8mjWNwumVj594O8hDOvGvcK4CGf1ZzyfGt
 /2aLN2g9nhUhbWho=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mfQm1-00031p-FT
 for linux1394-devel@lists.sourceforge.net; Tue, 26 Oct 2021 18:04:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B73F6103C;
 Tue, 26 Oct 2021 17:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635270834;
 bh=whf4C39z/xu0gPPev4QsXNzrCAZV/tyBkKPQGGkpOIY=;
 h=From:To:Cc:Subject:Date:From;
 b=cTTPpv/H3LCY2pcS71KGdGZ6XNS+AQPCWSivUY3woXpvVYNglU5l7LRadhHF0SDUS
 vOWXSUHWm40JN8KQ3xtoL0wb+kcXVJIY50DrqCo8IS6HZs7Y9p4qapK4gE+2KBUJfR
 w10ewtewUvo7rDv7/H7LSGp3YwllWK4W2s5Fowlk2nJCy4pgP1cP5HxAeCKxr6xVsN
 2lT1veXkGfnX/SsVDNy5DfByGsC0yEwTSgtwCxA/U0sadXlBo8GdJJxJUzQx1XHBeQ
 hL/SsQ0Qd7VthQL6WIVS5ykecJuCq1A5cUu6YVhrqXgsTD1Mxbs/2P46Tffk08soe7
 RrKQBivraDAwQ==
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Subject: [PATCH net-next] firewire: don't write directly to netdev->dev_addr
Date: Tue, 26 Oct 2021 10:53:52 -0700
Message-Id: <20211026175352.3197750-1-kuba@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Headers-End: 1mfQm1-00031p-FT
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
Cc: netdev@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Commit 406f42fa0d3c ("net-next: When a bond have a massive amount
of VLANs...") introduced a rbtree for faster Ethernet address look
up. To maintain netdev->dev_addr in this tree we need to make all
the writes to it go through appropriate helpers.

Prepare fwnet_hwaddr on the stack and use dev_addr_set() to copy
it to netdev->dev_addr. We no longer need to worry about alignment.
union fwnet_hwaddr does not have any padding and we set all fields
so we don't need to zero it upfront.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/firewire/net.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/net.c b/drivers/firewire/net.c
index 4c3fd2eed1da..dcc141068128 100644
--- a/drivers/firewire/net.c
+++ b/drivers/firewire/net.c
@@ -1443,8 +1443,8 @@ static int fwnet_probe(struct fw_unit *unit,
 	struct net_device *net;
 	bool allocated_netdev = false;
 	struct fwnet_device *dev;
+	union fwnet_hwaddr ha;
 	int ret;
-	union fwnet_hwaddr *ha;
 
 	mutex_lock(&fwnet_device_mutex);
 
@@ -1491,12 +1491,12 @@ static int fwnet_probe(struct fw_unit *unit,
 	net->max_mtu = 4096U;
 
 	/* Set our hardware address while we're at it */
-	ha = (union fwnet_hwaddr *)net->dev_addr;
-	put_unaligned_be64(card->guid, &ha->uc.uniq_id);
-	ha->uc.max_rec = dev->card->max_receive;
-	ha->uc.sspd = dev->card->link_speed;
-	put_unaligned_be16(dev->local_fifo >> 32, &ha->uc.fifo_hi);
-	put_unaligned_be32(dev->local_fifo & 0xffffffff, &ha->uc.fifo_lo);
+	ha.uc.uniq_id = cpu_to_be64(card->guid);
+	ha.uc.max_rec = dev->card->max_receive;
+	ha.uc.sspd = dev->card->link_speed;
+	ha.uc.fifo_hi = cpu_to_be16(dev->local_fifo >> 32);
+	ha.uc.fifo_lo = cpu_to_be32(dev->local_fifo & 0xffffffff);
+	dev_addr_set(net, ha.u);
 
 	memset(net->broadcast, -1, net->addr_len);
 
-- 
2.31.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
