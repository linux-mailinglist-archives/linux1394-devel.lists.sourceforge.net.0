Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2C910E344
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Dec 2019 19:53:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ibULV-00024s-Gp; Sun, 01 Dec 2019 18:53:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1ibULU-00024h-DI
 for linux1394-devel@lists.sourceforge.net; Sun, 01 Dec 2019 18:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xzSGDgndy4hEfzaJZdi013WQbjs6t+0Oov7MojqlSqc=; b=JaF/VKZVkwWc22GlRDhTt9lkp+
 a2H7ZaMaBxB+WUTZc+s/50k4ZHf1rjy+Ec3sSwcxSr//YhPU2FxT8EiozFcAp4GeDvxz0Z0BKhjAA
 4RE//lHEVwng3UnH19elbQAK2egYdObKE1tjv/bj//DTvjxq3fg6kU03KJlSCm/4smOs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xzSGDgndy4hEfzaJZdi013WQbjs6t+0Oov7MojqlSqc=; b=B
 wAaTFSKePG3GJwyI9lg+8piJkoWxPpUfJyoJjA/bwKviHJbGauqM0Z+d4qW3SpQtoaA3CGHuIj0KG
 PFBqsh+5vSvjvzLmnoz72oJhAGZd6swE6LvziVFEbmm4VA28qhTn/x/Ih/Y37euiPUBZ3V6C64vlb
 8gw/nR/XveAAvmeg=;
Received: from einhorn-mail.in-berlin.de ([217.197.80.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ibULP-001qOW-JK
 for linux1394-devel@lists.sourceforge.net; Sun, 01 Dec 2019 18:53:24 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id xB1Ir8KB022637
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sun, 1 Dec 2019 19:53:08 +0100
Date: Sun, 1 Dec 2019 19:53:08 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [git pull] FireWire (IEEE 1394) update post v5.4
Message-ID: <20191201195308.363d0b83@kant>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arcgraph.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ibULP-001qOW-JK
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Linus,

please pull from the tag "firewire-update" at

    git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git firewire-update

to receive the following FireWire (IEEE 1394) subsystem updates:

  - another y2038 fix

  - janitorial: code movement

Arnd Bergmann (1):
      firewire: ohci: stop using get_seconds() for BUS_TIME

Stefan Richter (1):
      firewire: core: code cleanup after vm_map_pages_zero introduction

 drivers/firewire/core-cdev.c | 3 ++-
 drivers/firewire/core-iso.c  | 7 -------
 drivers/firewire/core.h      | 2 --
 drivers/firewire/ohci.c      | 2 +-
 4 files changed, 3 insertions(+), 11 deletions(-)

Tanks,
-- 
Stefan Richter
-======---== ==-- ----=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
