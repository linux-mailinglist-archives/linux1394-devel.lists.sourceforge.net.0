Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 178A222F413
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Jul 2020 17:47:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k05L8-0006Yc-1g; Mon, 27 Jul 2020 15:46:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yepeilin.cs@gmail.com>) id 1k05L6-0006YR-Lz
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Jul 2020 15:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eq6Q8ztU/SV0qKLD6bpCFHf5g7ycq71mi8wbaYyCfwM=; b=MxMOwBz7uYhfmAATf24pnDMIn2
 8N+clHB8bB9SH8+/4Xc1782mXJC3zXH880INRqlHXOjDhpxfhJyuZfkcn2CXinOgVtFsmWA06fI8/
 r0Gtow9+k3wQsbbKG7PqsT3hNyx/2pLz+5IKQLJNWoqpTLrGGVkkxeU/YYwBBN2BOwj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eq6Q8ztU/SV0qKLD6bpCFHf5g7ycq71mi8wbaYyCfwM=; b=I/lueteoA3ojwSuIQn0g71YW0X
 XKcf9l7tCNuXi/nUcT7XFZuuiDJVgYpYnUlWL4c+4F1GoTWttWJpzBBXCVWOBmuAhrJEXSob8WeAV
 EvSEa3WTCt+sgpNoQa2+xPh/gbnYhJoVcQ6yFU1RvNpCCSkhEsOhCiEMrU//Gx+Sh9S4=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k05L5-00AzsE-Ka
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Jul 2020 15:46:56 +0000
Received: by mail-qk1-f194.google.com with SMTP id e13so15647001qkg.5
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 27 Jul 2020 08:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eq6Q8ztU/SV0qKLD6bpCFHf5g7ycq71mi8wbaYyCfwM=;
 b=useCPfferacyo/0JUXOwYUSEUXb19osX2BOfpi1ycjVc26Azr4WGsIO+HRRWYTQr30
 ySYFahM0ujDCbR+y3GgsggUMD87PZjJagx6VbBz9Vl6sire8+gHrnPbKMCOGyTfujuv2
 RcQgoQWn38hlsB6hYzRNKe3yQfu11PHLhztVBbtLsP5nvUSCSOqDLKfV7HJR0So428Kx
 vzVnQEAK+vY+ePlywy2k6mxRztpQxEbhVd9c0M/oK7EzxRiqm7cmvka0Mkb1byNec6lO
 7NMb6BRwQs5LTdbinevBq0SBoK/XHbKto6yTn1+SYs+JjMMutAWY2c6AnDIYoCHLbLmS
 bzeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eq6Q8ztU/SV0qKLD6bpCFHf5g7ycq71mi8wbaYyCfwM=;
 b=rO3yzpQPC+HhYslC5iElvEzMynoO2Gk9TGZbuZFc042FiDAhMhyMi8k94rBUQ+QZBZ
 HuhAgcOCnlJ1Gj0BL/mKdgUPcL/RavcwaOBZFOD4qkLGnz6kVxb67b1pkjSv2RV6oB5n
 FGrKFIoW0nICqmP6vXvMTbQ8eP7WJLNeK2vrSZ3Ae8gTFrNEWR7+QbBecpff+t/Oc5AD
 BarW8KPmZbulhGIWvqBCkfAhA8kkOHKT2QMQNO7uVeR/F7xPSdfQ9e8jlfVNgQBiJC9C
 gDAevjc1eYIx8Kx678VIw2TXuwoy3b7DnnJS0AB/3Lbub87Z8MRNwMoMtx2slDHmvNH7
 Ytew==
X-Gm-Message-State: AOAM530FkWIKTE0zlc4lfRUou2IX95YZmctRyQFLW+LDauT/2a1j9yup
 Qek8rKUOy/SSbh1IxhyhXw==
X-Google-Smtp-Source: ABdhPJwVxJVQnSQkMP5WrsFM11nJ6OZHIQPk6i8j75Z7FhEUMKNos2zkeaTqm2s/ehlmTd+a3DiD4A==
X-Received: by 2002:a05:620a:1089:: with SMTP id
 g9mr23428430qkk.252.1595864802583; 
 Mon, 27 Jul 2020 08:46:42 -0700 (PDT)
Received: from localhost.localdomain ([209.94.141.207])
 by smtp.gmail.com with ESMTPSA id w18sm14390947qtn.3.2020.07.27.08.46.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 08:46:42 -0700 (PDT)
From: Peilin Ye <yepeilin.cs@gmail.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [Linux-kernel-mentees] [PATCH v2] firewire: Prevent kernel-infoleak
 in ioctl_get_info()
Date: Mon, 27 Jul 2020 11:45:21 -0400
Message-Id: <20200727154521.315774-1-yepeilin.cs@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200727151537.315023-1-yepeilin.cs@gmail.com>
References: <20200727151537.315023-1-yepeilin.cs@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yepeilin.cs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k05L5-00AzsE-Ka
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Peilin Ye <yepeilin.cs@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

ioctl_get_info() is copying uninitialized stack memory to userspace due to
the compiler not initializing holes in statically allocated structures.
Fix it by initializing `event` using memset() in fill_bus_reset_event().

Cc: stable@vger.kernel.org
Fixes: 344bbc4de14e ("firewire: Generalize get_config_rom to get_info.")
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
---
Change in v2:
    - Add an appropriate `Fixes` tag. (Suggested by Arnd Bergmann
      <arnd@arndb.de>)

 drivers/firewire/core-cdev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index fb6c651214f3..2341d762df5b 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -340,6 +340,8 @@ static void fill_bus_reset_event(struct fw_cdev_event_bus_reset *event,
 {
 	struct fw_card *card = client->device->card;
 
+	memset(event, 0, sizeof(*event));
+
 	spin_lock_irq(&card->lock);
 
 	event->closure	     = client->bus_reset_closure;
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
