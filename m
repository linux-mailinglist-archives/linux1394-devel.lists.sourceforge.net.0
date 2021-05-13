Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEE537F5EA
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 May 2021 12:50:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lh8uo-0008P3-My; Thu, 13 May 2021 10:50:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jiapeng.chong@linux.alibaba.com>) id 1lh8un-0008Os-KR
 for linux1394-devel@lists.sourceforge.net; Thu, 13 May 2021 10:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7f/A+CaPLE1yYaCJiRzR8HJXx8mdHcnNoCaCy++xpBI=; b=Jh7eH+iPIsprHPweMOY8fixOCA
 EQ81QWMV44U0gDV1M1qMyZZwQTwB30G+x9BkI2/Col1djPSqGs1MgU8icyq5LXx6csCGERJXB3D11
 Icz5Bgxl7AHB1GOnUrkfw6ryjzpWvjENfNRcV+SmyZz3PPaYjVew9kq+RGl8i2X3RQyM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7f/A+CaPLE1yYaCJiRzR8HJXx8mdHcnNoCaCy++xpBI=; b=SusuFVV6AP2xrqGfdjb3fJ8+sF
 b/ZlTAti0UJnc0mNnUKJ9sN20l7LyAw+KQsr17y30r86keNJFHz9Vm55x9aX+nI84eeF8j5gw2aDj
 8ReLlaBLNs3XY55mFqfGjwS+vgW6EczmGT2WSWTxOaGJT1WUV1c3TAQtP6gYLoKeCXhg=;
Received: from out30-42.freemail.mail.aliyun.com ([115.124.30.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lh8uf-0007Ek-Pq
 for linux1394-devel@lists.sourceforge.net; Thu, 13 May 2021 10:50:01 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R161e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=alimailimapcm10staff010182156082;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=7; SR=0;
 TI=SMTPD_---0UYk7jUl_1620902979; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0UYk7jUl_1620902979) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 13 May 2021 18:49:45 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: bootc@bootc.net
Subject: [PATCH] scsi: target: sbp_target: Remove redundant assignment to
 pg_size
Date: Thu, 13 May 2021 18:49:37 +0800
Message-Id: <1620902977-57076-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1lh8uf-0007Ek-Pq
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
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
 target-devel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Variable pg_size is set to '0x100 << pg_size', but this value is
never read as it is not used later on, hence it is a redundant
assignment and can be removed.

Clean up the following clang-analyzer warning:

drivers/target/sbp/sbp_target.c:1264:3: warning: Value stored to
'pg_size' is never read [clang-analyzer-deadcode.DeadStores].

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/target/sbp/sbp_target.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/target/sbp/sbp_target.c b/drivers/target/sbp/sbp_target.c
index ce84f93..4d3ceee 100644
--- a/drivers/target/sbp/sbp_target.c
+++ b/drivers/target/sbp/sbp_target.c
@@ -1261,7 +1261,6 @@ static int sbp_rw_data(struct sbp_target_request *req)
 	pg_size = CMDBLK_ORB_PG_SIZE(be32_to_cpu(req->orb.misc));
 	if (pg_size) {
 		pr_err("sbp_run_transaction: page size ignored\n");
-		pg_size = 0x100 << pg_size;
 	}
 
 	spin_lock_bh(&sess->lock);
-- 
1.8.3.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
