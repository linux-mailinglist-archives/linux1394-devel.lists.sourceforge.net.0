Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E6230ED7F
	for <lists+linux1394-devel@lfdr.de>; Thu,  4 Feb 2021 08:41:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l7ZFx-0005XS-Uq; Thu, 04 Feb 2021 07:40:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiapeng.chong@linux.alibaba.com>) id 1l7ZFv-0005XJ-O6
 for linux1394-devel@lists.sourceforge.net; Thu, 04 Feb 2021 07:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mF4gC48laHIBzxQNAbb2yJo9lzSAGPX9pZYbizcS1Wk=; b=aYZdaY9aya+cFcLh/nNCXBDomz
 u+AJqlSUuRIyKomP074ROlSYbd7IKp0kuoODdtSEHZxy2fPJ7yZxjoN9WG0WWV0cJd8jOzJAbSBL8
 G0eHx6+S62NfJJsN8v8ElmE1fYQWRvAsiKk8c4mE30gmkInRSSiP0Z/ZRLLf2Z7gZ5QI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mF4gC48laHIBzxQNAbb2yJo9lzSAGPX9pZYbizcS1Wk=; b=XdL2/oUudZkxIMWVP4X3pyrv6Y
 SWMKRCoGDySbMMHtpQNH5ys258B+jy9UuIghkZiwGHomb44/ZokpaQzZa7JZBjqmX951MnnWh+NtD
 jl+XTnESd+q90jNAJkHf/Vaq5TgQtBLbchDhv+uepVvqG22DlPuOuq8ySjEBKS0TkvUQ=;
Received: from out30-54.freemail.mail.aliyun.com ([115.124.30.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l7ZFk-0001A0-LP
 for linux1394-devel@lists.sourceforge.net; Thu, 04 Feb 2021 07:40:47 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R141e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=4; SR=0;
 TI=SMTPD_---0UNqzBz7_1612424421; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0UNqzBz7_1612424421) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 04 Feb 2021 15:40:27 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH v2] firewire: convert sysfs sprintf/snprintf family to
 sysfs_emit
Date: Thu,  4 Feb 2021 15:40:20 +0800
Message-Id: <1612424420-96871-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1l7ZFk-0001A0-LP
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
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Fix the following coccicheck warning:

./drivers/firewire/core-device.c:375:8-16: WARNING: use scnprintf or
sprintf.

Reported-by: Abaci Robot<abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
Changes in v2:
  - Modified print format.

 drivers/firewire/core-device.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 80db43a..25508a8 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -372,8 +372,7 @@ static ssize_t rom_index_show(struct device *dev,
 	struct fw_device *device = fw_device(dev->parent);
 	struct fw_unit *unit = fw_unit(dev);
 
-	return snprintf(buf, PAGE_SIZE, "%d\n",
-			(int)(unit->directory - device->config_rom));
+	return sysfs_emit(buf, "%td\n", unit->directory - device->config_rom);
 }
 
 static struct device_attribute fw_unit_attributes[] = {
@@ -403,8 +402,7 @@ static ssize_t guid_show(struct device *dev,
 	int ret;
 
 	down_read(&fw_device_rwsem);
-	ret = snprintf(buf, PAGE_SIZE, "0x%08x%08x\n",
-		       device->config_rom[3], device->config_rom[4]);
+	ret = sysfs_emit(buf, "0x%08x%08x\n", device->config_rom[3], device->config_rom[4]);
 	up_read(&fw_device_rwsem);
 
 	return ret;
-- 
1.8.3.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
