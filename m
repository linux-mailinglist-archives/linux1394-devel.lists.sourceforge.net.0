Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 508C2207DA1
	for <lists+linux1394-devel@lfdr.de>; Wed, 24 Jun 2020 22:45:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1joCGj-0000jd-KR; Wed, 24 Jun 2020 20:45:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@oxu.publicvm.com>) id 1joCGi-0000jW-23
 for linux1394-devel@lists.sourceforge.net; Wed, 24 Jun 2020 20:45:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Reply-To:Message-ID:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LNj8M5d/s+f5hvvI7FB1YITgaIHaXPCccrw4cBMFbc0=; b=XY14nv+l67Yr6kDn4k3DpE7cLK
 AG7smFHUkTVXZLY4Hl4KsD07l/70JgY4KBQa7kjXgoSGiYHW02eVlaTiqJ+/o5j4BxyvgFYw/uUfn
 aXG3ypKr/s/wz2hW4EI2KQS1JkDAcQoFiGtOq8XXx0b0YYgCAKIn8jHxHIiE8lEsoA8k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Reply-To:Message-ID:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LNj8M5d/s+f5hvvI7FB1YITgaIHaXPCccrw4cBMFbc0=; b=R
 TtEr0BwjT6QV4bo7HNL894c609cF245nwqLfEy6wRpCPHrnhqiYURn31/3ofD2FnD/O9nGTkTNzOT
 Gadh+zHh255NkIPqL9l+0T5k2lLDK3rH+uEGesFsyP4yRNCu6CSKMc/K51/G5JwfzhsQqGKc9Qntp
 2i+xD6PRCHvZ776o=;
Received: from oxu.publicvm.com ([104.168.190.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1joCGg-00H1kZ-N5
 for linux1394-devel@lists.sourceforge.net; Wed, 24 Jun 2020 20:45:15 +0000
Received: from WIN-UFVMAPBRAME (localhost [IPv6:::1])
 by oxu.publicvm.com (Postfix) with ESMTP id 843494B38F9
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 24 Jun 2020 20:44:58 +0000 (UTC)
Message-ID: <038ed772-44006-0e029062185301@win-ufvmapbrame>
From: "Michael Abert" <info@oxu.publicvm.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Hallo 6/24/2020  9:44:57 PM
Date: Wed, 24 Jun 2020 21:43:58 +0100
MIME-Version: 1.0
X-Priority: 3
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1joCGg-00H1kZ-N5
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
Reply-To: Michael Abert <michael.abert@pfl-kredit.com>
Content-Type: multipart/mixed; boundary="===============2901568184446401402=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2901568184446401402==
Content-Type: text/plain
Content-Transfer-Encoding: 8bit

Hallo linux1394-devel@lists.sourceforge.net

Sehr geehrte Damen und Herren

Wir gewähren Darlehen in Höhe von 10.000,00 € bis 5 Mio. € mit einem Zinssatz von 2%

Die Zinsen und die Laufzeiten sind sehr attraktiv (2%) und in punkto Sicherheit beschränken wir uns auf das absolute Minimum. Interessiert? Dann kontaktieren Sie uns doch für weitere Informationen per e-mail

Michael Abert.



--===============2901568184446401402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2901568184446401402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2901568184446401402==--
