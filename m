Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C7422F3B1
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Jul 2020 17:18:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k04tX-0001nx-Sa; Mon, 27 Jul 2020 15:18:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yepeilin.cs@gmail.com>) id 1k04tX-0001np-Dw
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Jul 2020 15:18:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oumv6DjctSmluV8Ivacc6/Q4aJir+U55bBJZDerGc5I=; b=KzMuhiULlEUmu3hal40DFk5dCk
 9gpTXM8+ifvaZOxBQxk+HlXnMYT3s/qfLJsPpzhV0a+GMgBvPuSaHvgsezUCuACULWrJ4xiFs6432
 F9o4gNYjTIOtUQ6z3lggeNzJWYbF+e39qXSTIoiJiRUemSngtPOFoDxMNKora+NcmIWw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oumv6DjctSmluV8Ivacc6/Q4aJir+U55bBJZDerGc5I=; b=R
 PV0POcfzTS8iuNNlHlJQCvPW81XaN+OxK6HJ1mBa98hOliSyYkXSpNxTtPRrUyePH2nKHCCBseA5N
 5cZHfsfpSbWVtfJ+ygWBz5Gu9hNOOj4E9A3kRyXNhoBGqWE2+qM7lAfxhLBlxKgIgnPo8Ho88QXjC
 FnY9z9MXPXn4IJDA=;
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k04tW-004BQl-9n
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Jul 2020 15:18:27 +0000
Received: by mail-qt1-f193.google.com with SMTP id d27so12444014qtg.4
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 27 Jul 2020 08:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oumv6DjctSmluV8Ivacc6/Q4aJir+U55bBJZDerGc5I=;
 b=Px+7gUwtxpKPDvHuoB6IlCBvk6EYS0HihLI+J0DD9Ezkc74/7XR8zWE5ozirQqLiAX
 GkTIW+1WD/9kORpCBOnAiXOdvsQplAmxjt4x9u68njVmagBRd1EPT/DkywHRiMxics9e
 g+KAmVPtsnmWT9MDCxCqrBnvLaV+shLM7I1MiYFWmRJGOJ1QK8QLcbClczKJNwMT1IVb
 5b+QaTWXQGkSWsYgGI870ieUbNiJ7NlmKpo6RigKaZKsss2an4B4b3lV5RFz7Oczzu7I
 bE5utPmhMSYKh8aNIeJoUcULYkWff3tElXuJttV6jWPZZ0P8nCREx7rS3j57zkNrQAIe
 C5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oumv6DjctSmluV8Ivacc6/Q4aJir+U55bBJZDerGc5I=;
 b=MiHGp/Oa6m4qdC23jZwWQ9IaQUmKpcI7BoB94CSVg+av2+ffTzPoe5lINezoWnDBwS
 APCFgjZPDdT7iZuAjw5PepAD6zv8elvQvTx8YwpY6OKrPbH45PK3O6zfApuDwB26LvPv
 W4tTfuUEefh71hVaz8F+7OxZHocmi3lR3vcUqq4mKTTPz7vrs4Jly6jXySrQIj6ljhs8
 AxIv1yP3ygRto9JVJY90r07PwCcjkgTIaI1zdzdM5oszcFCqX62xcgD4/Z4YNYQhhI+c
 2BCfJ8SgK8Iq/4Xz21uYHmQh/8F0FomaDBT6d/X/mBZetu5NnRYWijZw0AG8XHg1iAQ4
 vp7A==
X-Gm-Message-State: AOAM530Ms4AS/2sPTTlPJLWKUrLY3+0fhe3ptXR6/xABs73ymsRajoIf
 fD1SafhQqVgbepfZ90Efpg==
X-Google-Smtp-Source: ABdhPJyLTAelIjtu78jYMToVbssYjgYPk3s7pOniRfc3akQhku8vGAuGb0/YsOPPTj334y5KEiY9SA==
X-Received: by 2002:aed:2199:: with SMTP id l25mr21958744qtc.309.1595863092480; 
 Mon, 27 Jul 2020 08:18:12 -0700 (PDT)
Received: from localhost.localdomain ([209.94.141.207])
 by smtp.gmail.com with ESMTPSA id o21sm3445003qkk.94.2020.07.27.08.18.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 08:18:12 -0700 (PDT)
From: Peilin Ye <yepeilin.cs@gmail.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [Linux-kernel-mentees] [PATCH] firewire: Prevent kernel-infoleak in
 ioctl_get_info()
Date: Mon, 27 Jul 2020 11:15:37 -0400
Message-Id: <20200727151537.315023-1-yepeilin.cs@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yepeilin.cs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k04tW-004BQl-9n
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
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
---
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
