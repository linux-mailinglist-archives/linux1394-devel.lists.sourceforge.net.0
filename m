Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A8C30D117
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Feb 2021 02:56:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l77Ob-0002Qh-9X; Wed, 03 Feb 2021 01:55:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yang.lee@linux.alibaba.com>) id 1l77OZ-0002QZ-8t
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Feb 2021 01:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/bZSxvASXR7l8AhOUkzDsywN9fgU4dbq33qffpVhFXY=; b=Zj0EZkok4Oc8o6O3loKUyVXJw9
 9tZglip3hQlvSCJh9eQyOWx5/fn8Ep8/omEHqA4gwdYAX4mbhdqwiYNuQX2dUhHcmATb1xIBpo0gR
 ISijkKkaHMEjOcQh66LovvI/1u4LhIGNZly4JcI4pvVuOWRSJsJWMnniIgZVoH8KuKiY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/bZSxvASXR7l8AhOUkzDsywN9fgU4dbq33qffpVhFXY=; b=cuVKxqLJ9bTB7uj5PCs5ySrznc
 /Uanas50IRPFIuWEI7FbYcx6LXyfEi1DbR206vPW94m5lFJPpXL5/UfNc9b1WUrQ0t4YrHUIJ9r3i
 rjjOAn7oDiNv2mUwTkMH1KPBoy/QK84h5NQslMulbNbxBkMC/4WYI0xh9fD2EtMN060A=;
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l77OO-000687-QK
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Feb 2021 01:55:50 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R881e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04394; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=7; SR=0; TI=SMTPD_---0UNiznmg_1612316993; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0UNiznmg_1612316993) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 03 Feb 2021 09:49:53 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: bootc@bootc.net
Subject: [PATCH] scsi: target: remove unneeded semicolon
Date: Wed,  3 Feb 2021 09:49:52 +0800
Message-Id: <1612316992-71443-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [47.88.44.36 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1l77OO-000687-QK
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
Cc: martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, target-devel@vger.kernel.org,
 Yang Li <yang.lee@linux.alibaba.com>, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Eliminate the following coccicheck warning:
./drivers/target/sbp/sbp_target.c:1009:2-3: Unneeded semicolon

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/target/sbp/sbp_target.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/target/sbp/sbp_target.c b/drivers/target/sbp/sbp_target.c
index e4a9b9f..2a6165f 100644
--- a/drivers/target/sbp/sbp_target.c
+++ b/drivers/target/sbp/sbp_target.c
@@ -1006,7 +1006,7 @@ static void tgt_agent_fetch_work(struct work_struct *work)
 			agent->state = AGENT_STATE_SUSPENDED;
 
 		spin_unlock_bh(&agent->lock);
-	};
+	}
 }
 
 static struct sbp_target_agent *sbp_target_agent_register(
-- 
1.8.3.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
