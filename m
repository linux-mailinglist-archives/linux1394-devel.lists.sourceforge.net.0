Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E533532E6
	for <lists+linux1394-devel@lfdr.de>; Sat,  3 Apr 2021 08:59:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lSaFk-0000A3-Iw; Sat, 03 Apr 2021 06:59:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zheyuma97@gmail.com>) id 1lSaFj-00009o-EV
 for linux1394-devel@lists.sourceforge.net; Sat, 03 Apr 2021 06:59:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NucJEIxvdGYHP7INKLZtATN1/A7Ik4W7xOcbI0VVdP4=; b=m4ouKj92FUmZqKpmsS9FaoopRH
 7FUcQbv8va6sJmpSGXgQSw0FVkPyvfU/zJQNMK17lGArFtKdvb1HzWWUcFyEYgKPXQJiECSDsEcpk
 W+u58zJutcKXB+oJHqDBNtY4ErKWZCIX2OGU+bV2APC2XRLS7rVeH5rJlQHJF7XtI9uw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NucJEIxvdGYHP7INKLZtATN1/A7Ik4W7xOcbI0VVdP4=; b=UaRdS2zFGuHTTsWwdjzjiQp0ub
 XHaBIsMtQjl86glyPrZTL4UdCWK1O/yiQFECpcql/ZwLnIs5GhO8j3er5vD6EgtwyeQNNC4lnB50y
 ND7WM+7wOUNW9WRIYI2XN93uPeO/R+nYxIhz+kTM4+9LHkGCnD7wHMZKsyqoJQqWiHLQ=;
Received: from mail-pg1-f181.google.com ([209.85.215.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSaFa-0000Xt-9e
 for linux1394-devel@lists.sourceforge.net; Sat, 03 Apr 2021 06:59:27 +0000
Received: by mail-pg1-f181.google.com with SMTP id l76so4818272pga.6
 for <linux1394-devel@lists.sourceforge.net>;
 Fri, 02 Apr 2021 23:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NucJEIxvdGYHP7INKLZtATN1/A7Ik4W7xOcbI0VVdP4=;
 b=cMe32OnuWkU2hUGwEaSzo2AOziK3FAQCpODSVxerUBxlaxKjDlngI1fcLihem3sVYA
 IJwW/MyaCn5zoOWFUCXEvqeUVwWLNSNFD6aHlkqADOSWIqCpESyaB5JS98hwAflV+shh
 meK09570LskRKm6fUvPIck74kPJmWCOx1/lcLnhqFhmVfpD5WrlfeEpom2/nPPcNbBq+
 hk5FhrEM0JtnrKsqVi+FRuRNylI2SXp8huBghBDMBrrmYBm8o2S+SiZoFX+C2vNN66fR
 FzILNkh9Gy9nm21uoy5cJAvxqfU4N5vwmqIg/VKzO0gPZ+8HL4vw+lSllD5UjLcShbGB
 u3Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NucJEIxvdGYHP7INKLZtATN1/A7Ik4W7xOcbI0VVdP4=;
 b=QeLKi814krx3+ldec/FaW2XPHUgi8pFHKGq1toRJKimM8gNRWZF+r5DVn/HVlHY01b
 hwjkY3pha9tf7n5YIxCdUSuBAdT0bMxrK+8QO3WLK0wci/o7OU/D9ahf2NWQw13w3jbZ
 +kHDargAd5aSaEX9wtz3hlWBDAhYx7caSmzZ21dw1r3Jy2w+ss5gszJrsDsla0ysjNLW
 AUb3sWXpChG6f1FUVdQirRQw5NRNZCEKASd/p3st+U1ovSAIMCQhUG4z3nTjDAWwzPmL
 lR7lAmOqQKvcZgabsR8+Ys5QqwZ174b5anCTKtWe7dCoV6RIJW0pU5IkhhX3sP/qpLlk
 AvIg==
X-Gm-Message-State: AOAM531mhoNArbueOCqRBK7PS8N+w5VAnhwuhC3NPUOJvXKPR9vGQASj
 ztp+Q8qe9quVlBa52Joz/g==
X-Google-Smtp-Source: ABdhPJyk3039cxJ3S2YGguHuKg1IAJgoaRN3NsKNK7AIugc9UwtY4wLHa6TPgUNCFYf9ZmEJpcdHtg==
X-Received: by 2002:a63:3245:: with SMTP id y66mr14987872pgy.435.1617433151144; 
 Fri, 02 Apr 2021 23:59:11 -0700 (PDT)
Received: from vultr.guest ([198.13.63.205])
 by smtp.gmail.com with ESMTPSA id b10sm9912981pgm.76.2021.04.02.23.59.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Apr 2021 23:59:10 -0700 (PDT)
From: Zheyu Ma <zheyuma97@gmail.com>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH] firewire: nosy: Fix a use-after-free bug in nosy_ioctl()
Date: Sat,  3 Apr 2021 06:58:36 +0000
Message-Id: <1617433116-5930-1-git-send-email-zheyuma97@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (zheyuma97[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.181 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.181 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (zheyuma97[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lSaFa-0000Xt-9e
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
Cc: greg@kroah.com, security@kernel.org, linux1394-devel@lists.sourceforge.net,
 Zheyu Ma <zheyuma97@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

For each device, the nosy driver allocates a pcilynx structure.
A use-after-free might happen in the following scenario:

1. Open nosy device for the first time and call ioctl with command
    NOSY_IOC_START, then a new client A will be malloced and added
    to doubly linked list.
2. Open nosy device for the second time and call ioctl with command
    NOSY_IOC_START, then a new client B will be malloced and added
    to doubly linked list.
3. Call ioctl with command NOSY_IOC_START for client A, then client A
    will be readded to the doubly linked list. Now the doubly linked
    list is messed up.
4. Close the first nosy device and nosy_release will be called.
    In nosy_release, client A will be unlinked and freed.
5. Close the second nosy device, and client A will be referenced,
    resulting in UAF.

The root cause of this bug is that the element in the doubly linked list
is reentered into the list.
Fix this bug by adding a check before inserting a client. If a client
is already in the linked list, don't insert it.

The following KASAN report reveals it:

    [   14.672676 ] BUG: KASAN: use-after-free in nosy_release+0x1ea/0x210
    [   14.673113 ] Write of size 8 at addr ffff888102ad7360 by task poc
    [   14.673609 ] CPU: 3 PID: 337 Comm: poc Not tainted 5.12.0-rc5+ #6
    [   14.673988 ] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009),
    BIOS rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
    [   14.674686 ] Call Trace:
    [   14.674843 ]  dump_stack+0x8a/0xb5
    [   14.675061 ]  print_address_description.constprop.0+0x18/0x130
    [   14.675428 ]  ? nosy_release+0x1ea/0x210
    [   14.675676 ]  ? nosy_release+0x1ea/0x210
    [   14.675916 ]  kasan_report.cold+0x7f/0x111
    [   14.676169 ]  ? nosy_release+0x1ea/0x210
    [   14.676409 ]  nosy_release+0x1ea/0x210
    [   14.676642 ]  __fput+0x1e2/0x840
    [   14.676844 ]  task_work_run+0xe8/0x180
    [   14.677083 ]  exit_to_user_mode_prepare+0x114/0x120
    [   14.677388 ]  syscall_exit_to_user_mode+0x1d/0x40
    [   14.677678 ]  entry_SYSCALL_64_after_hwframe+0x44/0xae
    [   14.677995 ] RIP: 0033:0x7fc5a8666f30
    [   14.678229 ] Code: 00 64 c7 00 0d 00 00 00 b8 ff ff ff ff eb 90
    b8 ff ff ff ff eb 89 0f 1f 40 00 83 3d d9 27 2c 00 00 75 10 b8 03
    00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e84
    [   14.679385 ] RSP: 002b:00007ffe9e94cd68 EFLAGS: 00000246
    ORIG_RAX: 0000000000000003
    [   14.679862 ] RAX: 0000000000000000 RBX: 0000000000000000
    RCX: 00007fc5a8666f30
    [   14.680301 ] RDX: 00007ffe9e94ce78 RSI: 0000000000002601
    RDI: 0000000000000004
    [   14.680743 ] RBP: 00007ffe9e94cd80 R08: 0000564727400850
    R09: 00007fc5a8939ba0
    [   14.681180 ] R10: 0000000000000692 R11: 0000000000000246
    R12: 0000564727400610
    [   14.681624 ] R13: 00007ffe9e94ce60 R14: 0000000000000000
    R15: 0000000000000000
    [   14.682072 ]
    [   14.682168 ] Allocated by task 337:
    [   14.682387 ]  kasan_save_stack+0x1b/0x40
    [   14.682633 ]  __kasan_kmalloc+0x7a/0x90
    [   14.682868 ]  nosy_open+0x154/0x4d0
    [   14.683089 ]  misc_open+0x2ec/0x410
    [   14.683313 ]  chrdev_open+0x20d/0x5a0
    [   14.683541 ]  do_dentry_open+0x40f/0xe80
    [   14.683787 ]  path_openat+0x1cf9/0x37b0
    [   14.684025 ]  do_filp_open+0x16d/0x390
    [   14.684253 ]  do_sys_openat2+0x11d/0x360
    [   14.684497 ]  __x64_sys_open+0xfd/0x1a0
    [   14.684736 ]  do_syscall_64+0x33/0x40
    [   14.684964 ]  entry_SYSCALL_64_after_hwframe+0x44/0xae
    [   14.685283 ]
    [   14.685384 ] Freed by task 337:
    [   14.685580 ]  kasan_save_stack+0x1b/0x40
    [   14.685822 ]  kasan_set_track+0x1c/0x30
    [   14.686062 ]  kasan_set_free_info+0x20/0x30
    [   14.686324 ]  __kasan_slab_free+0xe5/0x110
    [   14.686581 ]  kfree+0x8f/0x210
    [   14.686775 ]  nosy_release+0x158/0x210
    [   14.687011 ]  __fput+0x1e2/0x840
    [   14.687213 ]  task_work_run+0xe8/0x180
    [   14.687449 ]  exit_to_user_mode_prepare+0x114/0x120
    [   14.687750 ]  syscall_exit_to_user_mode+0x1d/0x40
    [   14.688040 ]  entry_SYSCALL_64_after_hwframe+0x44/0xae
    [   14.688356 ]
    [   14.688454 ] The buggy address belongs to the object at
    ffff888102ad7300
    [   14.688454 ]  which belongs to the cache kmalloc-128 of size 128
    [   14.689232 ] The buggy address is located 96 bytes inside of
    [   14.689232 ]  128-byte region [ffff888102ad7300, ffff888102ad7380)
    [   14.689955 ] The buggy address belongs to the page:
    [   14.690258 ] page:0000000046ca3dc1 refcount:1 mapcount:0
    mapping:0000000000000000 index:0xffff888102ad7100 pfn:0x102ad6
    [   14.690917 ] head:0000000046ca3dc1 order:1 compound_mapcount:0
    [   14.691278 ] flags: 0x200000000010200(slab|head)
    [   14.691562 ] raw: 0200000000010200 dead000000000100
    dead000000000122  ffff8881000428c0
    [   14.692044 ] raw: ffff888102ad7100 0000000080200013
    00000001ffffffff  0000000000000000
    [   14.692531 ] page dumped because: kasan: bad access detected
    [   14.692877 ]
    [   14.692978 ] Memory state around the buggy address:
    [   14.693282 ]  ffff888102ad7200: fa fb fb fb fb fb fb fb fb fb
    fb fb fb fb fb fb
    [   14.693737 ]  ffff888102ad7280: fc fc fc fc fc fc fc fc fc fc
    fc fc fc fc fc fc
    [   14.694191 ] >ffff888102ad7300: fa fb fb fb fb fb fb fb fb fb
    fb fb fb fb fb fb
    [   14.695061 ]  ffff888102ad7380: fc fc fc fc fc fc fc fc fc fc
    fc fc fc fc fc fc
    [   14.695518 ]  ffff888102ad7400: 00 00 00 00 00 00 00 00 00 00
    00 00 00 00 fc fc
    [   14.695964 ]
    ==================================================================]

Reported-by: Zheyu Ma <zheyuma97@gmail.com>
Signed-off-by: Zheyu Ma <zheyuma97@gmail.com>
---
 drivers/firewire/nosy.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
index 5fd6a60b6741..c746aedbaa70 100644
--- a/drivers/firewire/nosy.c
+++ b/drivers/firewire/nosy.c
@@ -343,7 +343,7 @@ nosy_read(struct file *file, char __user *buffer, size_t count, loff_t *offset)
 static long
 nosy_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 {
-	struct client *client = file->private_data;
+	struct client *tmp, *client = file->private_data;
 	spinlock_t *client_list_lock = &client->lynx->client_list_lock;
 	struct nosy_stats stats;
 
@@ -360,6 +360,10 @@ nosy_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 			return 0;
 
 	case NOSY_IOC_START:
+		list_for_each_entry(tmp, &client->lynx->client_list, link)
+			if (tmp == client)
+				return -EINVAL;
+
 		spin_lock_irq(client_list_lock);
 		list_add_tail(&client->link, &client->lynx->client_list);
 		spin_unlock_irq(client_list_lock);
-- 
2.17.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
