Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1E191E01
	for <lists+linux1394-devel@lfdr.de>; Mon, 19 Aug 2019 09:37:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1hzcE6-0006pw-HL; Mon, 19 Aug 2019 07:37:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <nishkadg.linux@gmail.com>) id 1hzcE5-0006pj-IT
 for linux1394-devel@lists.sourceforge.net; Mon, 19 Aug 2019 07:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sTwE1kzHyYHA7dDNOOwRZ75yFPMR6k8B+jW2U9IUMDs=; b=axSUs5d8mEeYFyBktoWBUnQGma
 51TDwUL60wjStLRWZPvoMRlbej1OeX3h5Rx001cG5lgc7MjkQPSyTI69TeY7jY7tBYEdmNEvXOfe7
 xVeJG8kzwq9Xv2ZztJipdv/iVXxWNlksH/yuF+e2oWVFrL7/OX8AnZNx9M3sldow1TCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sTwE1kzHyYHA7dDNOOwRZ75yFPMR6k8B+jW2U9IUMDs=; b=G
 q3szwgzvTA/Ey0/gY7wMgVfVKse7ZlriOjjvhOBt6t/8As8EC1gJFecz6BZO0nG8oZ3wOoRpV5gIv
 GRXLPyPLIoEFhD41fyq9lXxtlIpr3RU1k/LZLJS3ORxlUS+3TVWAuLhw/rSP+u5751/hk0zTNhZlk
 5ShUODVpT3xfCEfo=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hzcE3-008SdV-Qc
 for linux1394-devel@lists.sourceforge.net; Mon, 19 Aug 2019 07:37:13 +0000
Received: by mail-pf1-f196.google.com with SMTP id w26so659640pfq.12
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 19 Aug 2019 00:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sTwE1kzHyYHA7dDNOOwRZ75yFPMR6k8B+jW2U9IUMDs=;
 b=YcJEQpLCHlJ982b97AImvdfJejn6HFVi2Bvmkx/eiSTbdBDpsQpjxVlAdksZwzm9gg
 HLSRcRtdJdM3tFYHlKCeMzg+yGZJXoOR5Q8bxje13nYoheJ96IASGMCQazzuFHL0Hc7M
 PnG3X6tu64LmPEJd3wyZDCX8VSWvNgPAB01z4nGw/ptIwPee+LBXpRlY3KqH++c+KoWa
 H4tRXQUaifehN20lUDcnOXqYuto4lWJqMkc02/Pl2msXxeVIYJFiTNuRziggF51ZjcZn
 9HnZ0AyEXGMY9zEoSg3dSp0ArptL5DmTbfDbO9d4mBjel9FH0/c6n/SJsqiOA9rKcli9
 QjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sTwE1kzHyYHA7dDNOOwRZ75yFPMR6k8B+jW2U9IUMDs=;
 b=jatY5kn7tiXJbELd42s3pB92Iw/+Yatu2d1XZTLzB8Dru4b0dIneGgwLER9i0Wdd0p
 f1eneVqcv+hGY/CD/2fLzUrVxrREebOj2m8osA+canlRTyqE7faaK6hOTKsnCwbrjnn4
 lCep3T1pPlLjwl5ttyqGgS+J4jqSr1n5Lk+56ZLqaFPPg0+/kA41w9SZhWmk6wbgqbXi
 zu35qoysG9/YwbHv4KaSu9peYtaKtyFEelnZp7XTBZyiWHI33turmU16v0GvN+k3cI/w
 PJfqloj1ZyuidqQgUEZyjQinjKyhutQrooYrDHRysgdvkDObLbEO9RSrk182Iw/CzXq6
 /02w==
X-Gm-Message-State: APjAAAU2fstrupfocWbCjsg5ys9nFlHndmjeCJwrRDVHCMa4Q3GC+Mlv
 KJrhuOBN3YraN0SvAw8mmuw=
X-Google-Smtp-Source: APXvYqw2128VcNLK/TgFWk76G501Bmb6L9kYargy3ZOkLc2lzuxwNnGpUey2LwnVEWII+bbw5FUXvA==
X-Received: by 2002:a17:90a:5207:: with SMTP id
 v7mr18588168pjh.127.1566200226131; 
 Mon, 19 Aug 2019 00:37:06 -0700 (PDT)
Received: from localhost.localdomain ([110.225.16.165])
 by smtp.gmail.com with ESMTPSA id x128sm20095680pfd.52.2019.08.19.00.37.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 00:37:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: mchehab@kernel.org, linux-media@vger.kernel.org, stefanr@s5r6.in-berlin.de,
 linux1394-devel@lists.sourceforge.net
Subject: [PATCH] media: firewire: Make structure fdtv_ca constant
Date: Mon, 19 Aug 2019 13:06:54 +0530
Message-Id: <20190819073654.32128-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (nishkadg.linux[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hzcE3-008SdV-Qc
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Static structure fdtv_ca, of type dvb_device, is only used when it is
passed as the third argument to function dvb_register_device(). However,
in the definition of dvb_register_device, the third parameter is
declared as constant. Hence make fdtv_ca const as well.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/media/firewire/firedtv-ci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/firewire/firedtv-ci.c b/drivers/media/firewire/firedtv-ci.c
index a960a0ce9deb..9363d005e2b6 100644
--- a/drivers/media/firewire/firedtv-ci.c
+++ b/drivers/media/firewire/firedtv-ci.c
@@ -217,7 +217,7 @@ static const struct file_operations fdtv_ca_fops = {
 	.llseek		= noop_llseek,
 };
 
-static struct dvb_device fdtv_ca = {
+static const struct dvb_device fdtv_ca = {
 	.users		= 1,
 	.readers	= 1,
 	.writers	= 1,
-- 
2.19.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
