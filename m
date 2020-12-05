Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E0F2CFF06
	for <lists+linux1394-devel@lfdr.de>; Sat,  5 Dec 2020 22:03:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1klehn-00085W-Gc; Sat, 05 Dec 2020 21:02:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <support@finpec.agr.br>) id 1klehj-00083e-Sv
 for linux1394-devel@lists.sourceforge.net; Sat, 05 Dec 2020 21:02:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hmrNcYqgI/oy8OlFfEJ4voWvLV+lOuZFFXj39oQEOJ4=; b=UfhXlxiC9CwmCua4TYp+RrPs6z
 dsDHaTNNIklF+XIZS9AvRo6D7FPRZMweqed1YXSXccPAbvnm27fLvuy/pMrLGWw5nrcZVMejLlprb
 xafDl2spds1gzOSvKLHEAWUpggkFw79FZqDo1uEE00fHXDFFBe/0l9uxQTJ/943KftMo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hmrNcYqgI/oy8OlFfEJ4voWvLV+lOuZFFXj39oQEOJ4=; b=T
 UB+/5yYt+EPkVM222Ex/70rEdi8aerP53tZ/J1RA/Jdgo1423pozWsG6wqoP7QJlNQPi/SP6P4CZf
 mDLYaBqPnXMBKuLrhsxxP0/PhDbnRlCjGrHSUOChdzIYON03nnITDM5DUvW7hQdvsXmAOzxZEutV/
 bZ6GlQBKM1UUy6Pc=;
Received: from lin05.mandichost.com.br ([177.70.106.69])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kleha-003aor-N8
 for linux1394-devel@lists.sourceforge.net; Sat, 05 Dec 2020 21:02:55 +0000
Received: by lin05.mandichost.com.br (Postfix, from userid 10256)
 id 6790C28C973; Sat,  5 Dec 2020 18:01:00 -0300 (-03)
To: linux1394-devel@lists.sourceforge.net
Subject: linux1394-devel confirm for me
X-PHP-Originating-Script: 10256:ixczwpyxir.php
Date: Sat, 5 Dec 2020 21:01:00 +0000
From: Juaquin Dabeer <support@finpec.agr.br>
Message-ID: <aafd106aae83ddee1770dc08824a4e14@finpec.agr.br>
MIME-Version: 1.0
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [177.70.106.69 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kleha-003aor-N8
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
Reply-To: juaquindabeer@mail.com.tr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Good day,

Please confirm receipt of the previous  mail I sent to  linux1394-devel@lists.sourceforge.net or do I resend it again?

Regards

Juaquin Dabeer
juaquindabeer@mail.com.tr



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
