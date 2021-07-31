Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC89E3DC59B
	for <lists+linux1394-devel@lfdr.de>; Sat, 31 Jul 2021 12:42:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1m9mRH-0005iO-Ij; Sat, 31 Jul 2021 10:41:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jordy@pwning.systems>) id 1m9mRF-0005iH-U4
 for linux1394-devel@lists.sourceforge.net; Sat, 31 Jul 2021 10:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o+U3o6QPypHM8myGciC65ftfcWsTRmvUWvO/xmq1Pew=; b=FiqHWDi5AVmKliU1WtfgRdGHeh
 kA3pPbs+8s3aVE+Ra+6b5ABf8k6RxXDDopAJC8OxycHZy5CvrVRvi7c/yg+nhYJT5RcmgOMT+zg+g
 42pz6JwUuk+6V0YRo6ylLdgR4WOe7/6vWm6WHlhfG7OUrW3JALp9p8OdyRo86h1O7XUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=o+U3o6QPypHM8myGciC65ftfcWsTRmvUWvO/xmq1Pew=; b=F
 nGOQrtDUJfczogB9USJxRy5bZQsp3PzHTwpKx2eMR6I8naxDutcB7w3UuefBSElq+EG3F5oKEUUKP
 W+HWAPKvmmGvi0l5Mjg/dOrIxLM2cIXfLzTqCI1Fb8bH/iJw8E6giOKMqLRt1geLU7pSvm2KJJuhC
 Btxof2t1LJyWhZp0=;
Received: from h4.fbrelay.privateemail.com ([131.153.2.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m9mRD-0008Ff-IS
 for linux1394-devel@lists.sourceforge.net; Sat, 31 Jul 2021 10:41:53 +0000
Received: from MTA-10-4.privateemail.com (mta-10-1.privateemail.com
 [68.65.122.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by h3.fbrelay.privateemail.com (Postfix) with ESMTPS id 0985B800B7
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 31 Jul 2021 06:41:44 -0400 (EDT)
Received: from mta-10.privateemail.com (localhost [127.0.0.1])
 by mta-10.privateemail.com (Postfix) with ESMTP id 3F25918000B6;
 Sat, 31 Jul 2021 06:41:28 -0400 (EDT)
Received: from localhost.localdomain (unknown [10.20.151.234])
 by mta-10.privateemail.com (Postfix) with ESMTPA id E444518000AE;
 Sat, 31 Jul 2021 06:41:26 -0400 (EDT)
From: Jordy Zomer <jordy@pwning.systems>
To: linux-kernel@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: make reg_(read|write) unsigned
Date: Sat, 31 Jul 2021 12:41:12 +0200
Message-Id: <20210731104112.512449-1-jordy@pwning.systems>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [131.153.2.45 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pwning.systems]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1m9mRD-0008Ff-IS
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jordy Zomer <jordy@pwning.systems>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The reg_(read|write) functions used to
take a signed integer as an offset parameter.
The callers of this function only pass an unsigned integer to it.
Therefore to make it obviously safe, let's just make this an unsgined
integer as this is used in pointer arithmetics.

Signed-off-by: Jordy Zomer <jordy@pwning.systems>
---
 drivers/firewire/ohci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 17c9d825188b..0119aa9cbc7c 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -524,12 +524,12 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 	}
 }
 
-static inline void reg_write(const struct fw_ohci *ohci, int offset, u32 data)
+static inline void reg_write(const struct fw_ohci *ohci, u32 offset, u32 data)
 {
 	writel(data, ohci->registers + offset);
 }
 
-static inline u32 reg_read(const struct fw_ohci *ohci, int offset)
+static inline u32 reg_read(const struct fw_ohci *ohci, u32 offset)
 {
 	return readl(ohci->registers + offset);
 }
-- 
2.27.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
