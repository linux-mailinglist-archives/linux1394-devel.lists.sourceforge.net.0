Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F2936A6EA
	for <lists+linux1394-devel@lfdr.de>; Sun, 25 Apr 2021 13:36:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lad3i-0006uo-8j; Sun, 25 Apr 2021 11:36:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jrdr.linux@gmail.com>) id 1lad2O-0006ql-AL
 for linux1394-devel@lists.sourceforge.net; Sun, 25 Apr 2021 11:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fAnBXmbI8k7isUTh/URInLKNzVSBWp0SOquPgfUFDB4=; b=Mw4Jp4VXOXCHkT9Us4sDILrePQ
 ieQq4lT2SFBSI7ojL5EoBqEwCpWRiEy2nXIESi6qtrwcElNaEhV9IGvKgHtkYBFuEmBI8A1a+tV3Y
 IQ6ibelBemp0oslWOlJdIW1/RWvWlmHriumISymOOWurMPgQPbrpeNZifPaFG996xmWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fAnBXmbI8k7isUTh/URInLKNzVSBWp0SOquPgfUFDB4=; b=U/KVbqJvrtuez9xWjSJeF1seGJ
 KjMeVnIZLzfoyZA7YrZhuc7W6bpUQx6BsM2mitphTPWbxmChmEIkLT3TO4DY/k0xAb2/QhasTbF9r
 u7842Lu6eKRSJxC4IdqrvENTjgSIua4clb+WEj5tubFve0w5qDi7fTMNymjRfiC4Sn6w=;
Received: from mail-io1-f44.google.com ([209.85.166.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lad2K-006fZA-81
 for linux1394-devel@lists.sourceforge.net; Sun, 25 Apr 2021 11:34:56 +0000
Received: by mail-io1-f44.google.com with SMTP id s16so47930609iog.9
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 25 Apr 2021 04:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fAnBXmbI8k7isUTh/URInLKNzVSBWp0SOquPgfUFDB4=;
 b=MwKIvA28TgK6WGm7yDG83kdPdu+iJx45hsYRagGRtaTFc+j6k1V6cMeEkbrW8820zO
 TiEFzVWI2Yn3fdBWafk7FT+jy0hxahoX5Kctb9OL/6pPGvBVEcOupd6x18PD91aRGgTo
 2miM6OtfTWEqR/mQ8jjzeMCDvksvCIztaZG9WvgpzlfyzxQdtq6e+9vDHUUrhY4++q9e
 SlBj8DEeroJ50+Rg1gClbSY0VRHabG+DS3hIkneFO/WQltxHfH4yAGgqKbX6F+bhOMTw
 UwzhaR8+HQqubb2qTYESY9PbjwwjWmTUplnQJDFZo0s0iK3+G8DpK1peg3HuXzgFAynk
 cY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fAnBXmbI8k7isUTh/URInLKNzVSBWp0SOquPgfUFDB4=;
 b=dFZDGIdj7pn9NnckQU/3bWSffXlCdwlI7e/0IHd0YwI4DnpuBdCiEchD5sxiityXOb
 RBdnUUBBqACbYcadkXbVGSmSbkYguMyLeULT7QqrNUwM5USFD7GRevJbGt5nWZj7s1hf
 CLeuKJDJ+H2I9PChG/Lh3Qe5rFU2BtSoRv3sjWCeh/S75FtIur7MXiWXFCvi6RQZOj0y
 qbi2CitIY2Ctcyc+FrJ31aJbDtRNJnRCio/FajJI/K7dH+dVW/y0qgOndWiC4pDyxmCX
 2NRLtT6k2blOwN/6X6MF+pSeJKTORYvnx9kCqbO3ZuQNz5MDc/aUuYNNlRHTxq4MfUTo
 5XEw==
X-Gm-Message-State: AOAM532CgncXxQuexFMNIEQ0F+eN4+vFXb8rsd1xZUVdBV6zsZ9M15Mc
 kzFyKcWjZP/2UWA9C7h9zqC9o8Gbh8GqCguh
X-Google-Smtp-Source: ABdhPJwDmbvWSN3Q7z5mpgQIFfMiRL97nbEnqZxq4/dkPXNsTr5MhMR0vMofqtSs+QzDl7QBIKqfVw==
X-Received: by 2002:a63:3812:: with SMTP id f18mr5553847pga.380.1619209858468; 
 Fri, 23 Apr 2021 13:30:58 -0700 (PDT)
Received: from localhost.localdomain ([49.37.83.174])
 by smtp.gmail.com with ESMTPSA id z26sm5409348pfr.106.2021.04.23.13.30.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Apr 2021 13:30:58 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH] firewire: net: Removed unused variable dev
Date: Sat, 24 Apr 2021 02:00:51 +0530
Message-Id: <1619209851-4739-1-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jrdr.linux[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lad2K-006fZA-81
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

kernel test robot throws below warning ->
All warnings (new ones prefixed by >>):

   drivers/firewire/net.c: In function 'fwnet_finish_incoming_packet':
>> drivers/firewire/net.c:491:23: warning: variable 'dev' set but not
>> used [-Wunused-but-set-variable]
     491 |  struct fwnet_device *dev;
         |                       ^~~

Removed unused variable *dev.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
---
 drivers/firewire/net.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/firewire/net.c b/drivers/firewire/net.c
index 2878564..4c3fd2e 100644
--- a/drivers/firewire/net.c
+++ b/drivers/firewire/net.c
@@ -488,7 +488,6 @@ static int fwnet_finish_incoming_packet(struct net_device *net,
 					struct sk_buff *skb, u16 source_node_id,
 					bool is_broadcast, u16 ether_type)
 {
-	struct fwnet_device *dev;
 	int status;
 
 	switch (ether_type) {
@@ -502,7 +501,6 @@ static int fwnet_finish_incoming_packet(struct net_device *net,
 		goto err;
 	}
 
-	dev = netdev_priv(net);
 	/* Write metadata, and then pass to the receive level */
 	skb->dev = net;
 	skb->ip_summed = CHECKSUM_NONE;
-- 
1.9.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
