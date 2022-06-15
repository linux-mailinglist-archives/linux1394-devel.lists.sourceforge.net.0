Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1874554C83E
	for <lists+linux1394-devel@lfdr.de>; Wed, 15 Jun 2022 14:15:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1o1Rvf-0008LK-Ug; Wed, 15 Jun 2022 12:15:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1o1Rve-0008LC-MB
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 12:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U41sdkndxEPcUW2HyhBS60wraWtLaKd+4y+3d1M8lDk=; b=mtBXYONwfK9ngWNznyrzFXFNB1
 uJdYhZ3tf71BJR6N0f3TWa5xkDegvUrI+DVKMyd2mYbE4Mtw/MJgKgi/UacU0TvyX56RUOTVlIn1y
 +vhoRz+Zjz9Y45rC5mCGNqsgQ5ChOh0KP+QqyBUoJOUcLOfXZ0UW9bYcQ2Ci0cQYnhC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U41sdkndxEPcUW2HyhBS60wraWtLaKd+4y+3d1M8lDk=; b=ggCu+Z7V+umakWGknQEEdNSq0r
 2+0DQ7ObnoRCKH2OBIngV964tm30gNMijCiWfLEUgCO0E/oZqE0p04QpQ/hxxX4ncnoEkhh9veATV
 blkOSPv4CnKlPNESASfVTpJLWYllGT+oU9VMx0bzCCF4LF6DaoU9xa6+LYcLZdpprmTE=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1Rvb-002NBU-KQ
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 12:15:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id A20A13200A07;
 Wed, 15 Jun 2022 08:15:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Jun 2022 08:15:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1655295313; x=
 1655381713; bh=U41sdkndxEPcUW2HyhBS60wraWtLaKd+4y+3d1M8lDk=; b=U
 C72yPViI75uIyif27I908MvytUcWLKm4N0ESE9OMSEsPDU5mEMXIDA1NGBEAx7AB
 KzgNZFWcrEf7RY6Oq2w3+rcms7VrK/0j6zo3OqehN0dKV42dVZ7eHo007OygHNHm
 e5z4rRgbEpnFRn1ZuTXyv8RCDKpS61q9wyTNC08LfT0Y1qYOKOVRkF8CyQjRq0rs
 ORp1YBIy8lCtw6ustyPzQ2wLXkCdMFe4IfUYrT4x2lE3bIL4ci4NtFdjjhLrQlpB
 kdaOMS2xYnIM0e6r9JYCXP49gHGAPDPz3cxaXeCsXjRFMbbVps1qp3kufzr4FBZf
 EMV0bqn1Otq4WqKmHND+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1655295313; x=1655381713; bh=U41sdkndxEPcU
 W2HyhBS60wraWtLaKd+4y+3d1M8lDk=; b=EdSmfthiQpm5UGVfTfzka8hJNiyjz
 OmHGJdMdfl6LLSbZ6CbyGECyy2x2LWpi94UvhdIdozNksOAkvXF9SSgwZIVkVtKd
 wkTtsIneHKuzVJb9+R2WD0RsaejsaNtjlNGvpoDd8T/s6Kbgse1iJMBcktZ4+3DJ
 bBLY3ehCoyn2Lv9Gq5b/N9FF8LNsItVm/BDrRW4FTwsSoB2AKUX/nbFC+Y4k6OhK
 L4mUPMP5oiu8yVcOMDFNIQP4y2kVkObn56eSG3xFrfSo68MUGrm7bLK4G+og6rXe
 +9ZfRCXIKUvocXxuB9tIw5zwWsYyU+Pc2WsredsWhpKYrfJoWhcPVW//A==
X-ME-Sender: <xms:UM2pYnse1Pd1FlW_rEXDZI_Dn60j10SaiK7LbUxbdQkfpcSxXFU_5g>
 <xme:UM2pYoeYDSQhn1E4ZTbwEf06tinRgDFVngwYoopNsHh8Tio9lXAMA-jEQbcj6XX4S
 j1fdTr5PeVulcjvitM>
X-ME-Received: <xmr:UM2pYqyTpza5M0Rh0hTjbJKcKC39Db0RN_UEKASEGnu_hHHriCviteMfhPWL6erF-DFNePJbnxohJlwxdKefc2e_CeZ3T6EDbRTt0tK-2sh3AlLxV7s>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddvuddggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgfduudekleevtefgtdevhfdtffef
 iefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:UM2pYmPUeWNeKNX3MBQt7NCQGs7lmvjR7azUd52zfhayCAFO_8riUg>
 <xmx:UM2pYn8kOLG5EGqm-rILAc_1C1iViz-ubMsT4B0O9bXTnMetCWDYVQ>
 <xmx:UM2pYmVArC0xF4gWa6oSA60oLyu-OljWUm1WF00sv6d-5M0Zicm0RA>
 <xmx:Uc2pYjZzsWNuTNc-prYpZVakq5OQfntXi3miPjQRr1DZJvS8dTRr8A>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Jun 2022 08:15:11 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH v2 1/3] firewire: convert sysfs sprintf/snprintf family to
 sysfs_emit
Date: Wed, 15 Jun 2022 21:15:03 +0900
Message-Id: <20220615121505.61412-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220615121505.61412-1-o-takashi@sakamocchi.jp>
References: <20220615121505.61412-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com> Fix
 the following coccicheck warning: ./drivers/firewire/core-device.c:375:8-16:
 WARNING: use scnprintf or sprintf. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o1Rvb-002NBU-KQ
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
 alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 Abaci Robot <abaci@linux.alibaba.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

Fix the following coccicheck warning:

./drivers/firewire/core-device.c:375:8-16: WARNING: use scnprintf or
sprintf.

Reported-by: Abaci Robot<abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 90ed8fdaba75..adddd8c45d0c 100644
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
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
