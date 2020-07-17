Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF7F224713
	for <lists+linux1394-devel@lfdr.de>; Sat, 18 Jul 2020 01:39:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jwZwL-0006op-3f; Fri, 17 Jul 2020 23:38:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1jwZwH-0006ob-GN
 for linux1394-devel@lists.sourceforge.net; Fri, 17 Jul 2020 23:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZPXx4fGiy7Wd5eCSRJhCZP53MZ395RpJbpqqFuhaB9w=; b=LfHHxggpJPFjzkbies1VQmt74E
 6FbTL+dMAZOjjB1tt/J1UlMP41ttw8xXV3d/SR8/XbCxtY3Za6iV42/Bwn9m9vzpjy83lRNiD3ZK4
 5D3McwG6qIx16UpqgTPHLMK/xk/ImPrXmjxKWC/pgNkXpcRIq95F/qlbfEwogFhq+384=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:To:
 Subject:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZPXx4fGiy7Wd5eCSRJhCZP53MZ395RpJbpqqFuhaB9w=; b=V
 wohoYbe65er2Cxp6A7GR4eZtiQTyAjG2zpYxj2IWuQ8NzHRZQSkuDdNSXLhj0MaqlBkpiZHfaESA5
 nAIYQ5FmGh2uNgxPTskwfDYRD/DOX+I3D7mWk8BfNcY+N2jlehv1e+jpdec0MC4ZkVQgV4XP87m69
 tHjIQf9y9aK7UJzY=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jwZwE-0051WH-FJ
 for linux1394-devel@lists.sourceforge.net; Fri, 17 Jul 2020 23:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=ZPXx4fGiy7Wd5eCSRJhCZP53MZ395RpJbpqqFuhaB9w=; b=WLOqaxfC66HykGZ0YxGwxs6YVw
 PmF2WBxVIcwImdIFO9UimqOUSvGrOk+bNeSN5dEnXBMtSfH8uTx9SsFkak0vWpWTZAVq/zUDXylcW
 ZT1vc2FVdDOcUNb7SVk98TVmCmEmT+uoxAK5jl3hN5keqaOKwitgoAv1uNYBBFS4FL0vqRDaiRaEn
 5o9z4ATTb7f85sZD84/yFJka/OPkUM9Zv6ZvAsZCYX6usNzehiyxeIxoAHWUFLjBZx2klwwzTbhre
 03m8Ml1hZVlmToFCFbHQJfKKC76PioJBtXQbILEm4sSAjjgIu8k7yNqAVBQFqiXapPcFYWy21+DoK
 h1tquP9A==;
Received: from [2601:1c0:6280:3f0::19c2]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwZw7-0006iF-Bz; Fri, 17 Jul 2020 23:38:39 +0000
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] firewire: linux/firewire-cdev.h: drop duplicated word in a
 comment
To: LKML <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux1394-devel@lists.sourceforge.net
Message-ID: <2f56acbd-bf67-4c8b-4ac8-aa142b7fb145@infradead.org>
Date: Fri, 17 Jul 2020 16:38:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwZwE-0051WH-FJ
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Randy Dunlap <rdunlap@infradead.org>

Drop the doubled word "for" in a comment.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Stefan Richter <stefanr@s5r6.in-berlin.de>
Cc: linux1394-devel@lists.sourceforge.net
---
 include/uapi/linux/firewire-cdev.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200714.orig/include/uapi/linux/firewire-cdev.h
+++ linux-next-20200714/include/uapi/linux/firewire-cdev.h
@@ -844,7 +844,7 @@ struct fw_cdev_queue_iso {
  * struct fw_cdev_start_iso - Start an isochronous transmission or reception
  * @cycle:	Cycle in which to start I/O.  If @cycle is greater than or
  *		equal to 0, the I/O will start on that cycle.
- * @sync:	Determines the value to wait for for receive packets that have
+ * @sync:	Determines the value to wait for receive packets that have
  *		the %FW_CDEV_ISO_SYNC bit set
  * @tags:	Tag filter bit mask.  Only valid for isochronous reception.
  *		Determines the tag values for which packets will be accepted.



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
