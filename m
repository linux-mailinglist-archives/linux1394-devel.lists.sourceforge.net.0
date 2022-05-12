Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FCE524B58
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 May 2022 13:18:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1np6po-0006hc-Vn; Thu, 12 May 2022 11:18:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1np6pl-0006hI-BZ
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U41sdkndxEPcUW2HyhBS60wraWtLaKd+4y+3d1M8lDk=; b=fUnqfbMuN1+TLfLJ1SN2XgcCIz
 +n4o7RxB9fvwaAFdnPFEnCtUq12c9x1xvNeJ7YUKMdOh/CYAPpvt7QpbYq5XDZa3sBBhyPSXKo//w
 KUwwOgXxkUOV08zfW5gZqMcRsgysBQJTK5CyDCnkXndkB5tXCHG+/rA3E44W6hGxVm7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U41sdkndxEPcUW2HyhBS60wraWtLaKd+4y+3d1M8lDk=; b=L5Ff5aqZWfitTyY9eNdVc3fm8z
 WhmcJa0qzgto45d8QfLiuPwc+9+xBaPaSPQyKvcgHxsz8tLZXX1GK5lqNjVxz2EnlBZE/FGWkBlD7
 Gz9O0pyyXf4AiuemwbxhDaa4ij4z0ERxjHmQIprjjyqrToxx3kdIWBrW22b8QtCLVY7E=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1np6pf-0001mk-W9
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:18:16 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1F90F5C01B4;
 Thu, 12 May 2022 07:18:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 12 May 2022 07:18:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1652354284; x=
 1652440684; bh=U41sdkndxEPcUW2HyhBS60wraWtLaKd+4y+3d1M8lDk=; b=v
 PMZ0qLtnKry/pGu8zc6NK4KjTrML9LTCDdfMOzRCCApM47NFSSLxD3WZsm7jacPS
 /zjGRXjhZ4xSuV+FXJGb5DFU26n3PdDLzmq+nrlaWbJw8ItIoc4LHM9Gt2eoZZ3Y
 HkjiGLh4EI86KdANWP4AYdpbuWdbuFX9Ohj+L356eFNlrC+dcJQ+lE9JEHNYTIhj
 FtP3sFs1SgUZ10iuE+RGUHSspM3rkWotEK+105YOUOdSMPINugZ4/oMq+RgPotvb
 9DvDq2bfc+cb8kJPhNUgeF/EALzw3phrQJioR0RbBvDhksVuZ3R9tv/R2LB4Yoki
 /Xg/YO28RauXNGlZxPsHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1652354284; x=1652440684; bh=U41sdkndxEPcUW2HyhBS60wraWtLaKd+4y+
 3d1M8lDk=; b=xf4mG0lpw+MGNUABxgT/09xcAl9EvWDFQ3YJaImlcUTQop8tvC6
 MM1hgOtvR9HmjXpgtBAKI9cWR5w2z49j6WJwMvJkKpamFwuFcGwCt5RbGFdFRHTY
 CUv7dtcGp8ulSmY4fBoIDGvjyl65lQ8TUeRUHXS5HRfwD99FKcN14zNleCa6Kf7Y
 rM6F2gs34mhq02VPmh+HTBUSf7Yv25Q88ASOnoM0TrveAmsrnYVtDsk+60KJ0ALC
 lmJG4FJHm5kqh46soxRvuOzRXA5h8mshFDxFAp5EDKSD3dxlktZM7cpvGdq8qoKz
 H8d7X5LRoPWJa/r6UUtSJ2Q7EwWB/aQf90g==
X-ME-Sender: <xms:6-x8YmEw2v5QQM_MX92cBfvKI2I9pC011fEm3bDzLguR_BGca7leug>
 <xme:6-x8YnXbv4kYH0HB1a0SFCeciGEs6-HqPZltl9FsqNncGDFd32-AC99r_zGbC7TFS
 TcRclut3FjDrlPUDmQ>
X-ME-Received: <xmr:6-x8YgLnF8M_fZDfuSN18VztiINZO1NKKW6tVsa7jJtXj_moPKP9lz5gkCI5nFVqqIyTLBClGmNL6-rHg54HT7Im1Pkpd4qFkURWw9ma-HiPYnxheQ8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrgeejgdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeei
 gfevueetffeivdffkedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:6-x8YgGUdIGNPID7Gk43TjNVcWMACgN8qBTXBO1rYonDXgH6prr9YA>
 <xmx:6-x8YsWuy2aecL5fdYsXWiqLZ0hFZTYDc4F8jFvJ5UjBD69c5m4zag>
 <xmx:6-x8YjMEQTjng_4G8eYAW631F31Bv-d1wkXz5iMngfT4a4u2AzS3Dw>
 <xmx:7Ox8YqxGt5OhzIzdCEqPlDRXJkNdvx3ifnDiDn2H8mrQ5tAb6dwISg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 May 2022 07:18:02 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH 1/3] firewire: convert sysfs sprintf/snprintf family to
 sysfs_emit
Date: Thu, 12 May 2022 20:17:54 +0900
Message-Id: <20220512111756.103008-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220512111756.103008-1-o-takashi@sakamocchi.jp>
References: <20220512111756.103008-1-o-takashi@sakamocchi.jp>
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
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1np6pf-0001mk-W9
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
