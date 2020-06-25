Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D90120A588
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 Jun 2020 21:16:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1joXM5-0008Hy-DZ; Thu, 25 Jun 2020 19:16:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1joXM3-0008Hr-LJ
 for linux1394-devel@lists.sourceforge.net; Thu, 25 Jun 2020 19:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ypGhbkJJQHJ6ZuFGwSaaj6cwnUHmJwn9C2OGh8ttqXI=; b=lwG8P2C3ieof8z7XR6h4oEAc3a
 3xPfLdJOxWadLZC5OEx++9LQ/9Glbq+ZlgMpDBfec+IuY80zT/uzp1RvdVSU1d8ZXJV5tw56AsvqT
 FcFOfsONcg3MmUmHFx+KhDwGwYHXkTZ8UDMDUWQ3pbsbjrbzFw0q3kFyKyyOoPIo30B8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ypGhbkJJQHJ6ZuFGwSaaj6cwnUHmJwn9C2OGh8ttqXI=; b=WA5ObwreLgjkGQDye4OoNHuqHf
 a29vJ6e6rYbcx3cDjEgD8GX/SeC0qV6cA/ucJb+C+ONkIl5zFUJwY6STRhOfvfokui3U0GB1aYEmp
 h3MO/aLNlb4TbyejdVgeP0R7v0quacRvRRAk8XX8ADBoN6LN3/n/QqITXJuolZYbgPe8=;
Received: from smtp07.smtpout.orange.fr ([80.12.242.129]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.2) id 1joXM1-0013bM-3a
 for linux1394-devel@lists.sourceforge.net; Thu, 25 Jun 2020 19:16:11 +0000
Received: from localhost.localdomain ([93.22.134.133]) by mwinf5d42 with ME
 id vXFw2200S2sr5ud03XFxJK; Thu, 25 Jun 2020 21:16:00 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 25 Jun 2020 21:16:00 +0200
X-ME-IP: 93.22.134.133
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: stefanr@s5r6.in-berlin.de,
	krh@bitplanet.net,
	hch@infradead.org
Subject: [PATCH V2] firewire: nosy: Fix the amount of memory deallocated by
 some 'pci_free_consistent' calls
Date: Thu, 25 Jun 2020 21:15:54 +0200
Message-Id: <20200625191554.941614-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624192325.940280-1-christophe.jaillet@wanadoo.fr>
References: <20200624192325.940280-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.129 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.129 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1joXM1-0013bM-3a
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux1394-devel@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

'lynx->pci_device' is allocated with a size of RCV_BUFFER_SIZE. This is to
say (16 * 1024).

Pass the same size when it is freed.

Fixes: 286468210d83 ("firewire: new driver: nosy - IEEE 1394 traffic sniffer")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
v2: move the #define RCV_BUFFER_SIZE at the top of the file so that it is
    defined when used in 'remove_card()'
    Spotted by kernel test robot <lkp@intel.com>
---
 drivers/firewire/nosy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
index 5fd6a60b6741..2fe34a2ce7cc 100644
--- a/drivers/firewire/nosy.c
+++ b/drivers/firewire/nosy.c
@@ -36,6 +36,8 @@
 
 static char driver_name[] = KBUILD_MODNAME;
 
+#define RCV_BUFFER_SIZE (16 * 1024)
+
 /* this is the physical layout of a PCL, its size is 128 bytes */
 struct pcl {
 	__le32 next;
@@ -510,7 +512,7 @@ remove_card(struct pci_dev *dev)
 			    lynx->rcv_start_pcl, lynx->rcv_start_pcl_bus);
 	pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
 			    lynx->rcv_pcl, lynx->rcv_pcl_bus);
-	pci_free_consistent(lynx->pci_device, PAGE_SIZE,
+	pci_free_consistent(lynx->pci_device, RCV_BUFFER_SIZE,
 			    lynx->rcv_buffer, lynx->rcv_buffer_bus);
 
 	iounmap(lynx->registers);
@@ -518,8 +520,6 @@ remove_card(struct pci_dev *dev)
 	lynx_put(lynx);
 }
 
-#define RCV_BUFFER_SIZE (16 * 1024)
-
 static int
 add_card(struct pci_dev *dev, const struct pci_device_id *unused)
 {
@@ -668,7 +668,7 @@ add_card(struct pci_dev *dev, const struct pci_device_id *unused)
 		pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
 				lynx->rcv_pcl, lynx->rcv_pcl_bus);
 	if (lynx->rcv_buffer)
-		pci_free_consistent(lynx->pci_device, PAGE_SIZE,
+		pci_free_consistent(lynx->pci_device, RCV_BUFFER_SIZE,
 				lynx->rcv_buffer, lynx->rcv_buffer_bus);
 	iounmap(lynx->registers);
 
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
