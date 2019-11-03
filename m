Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA33ED2B8
	for <lists+linux1394-devel@lfdr.de>; Sun,  3 Nov 2019 10:22:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iRC5a-00085z-Aa; Sun, 03 Nov 2019 09:22:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <choimj@isd.co.kr>) id 1iRC5Y-00085l-Tn
 for linux1394-devel@lists.sourceforge.net; Sun, 03 Nov 2019 09:22:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CjFBLg4feocA67R7Snn9hTAVTjuyOGDS6JZdh5yPjk4=; b=B9hvEb6Evbn60DdTBIHfMcD2lS
 zknf+21alQcePFngj0i7M4qskHXaXvZ+ELsvOGaK5LRL9o1cucbGIht+6TNp6zoNHh+Y0dQLRmBDF
 Fa9K/fVfLZdoRbo62B8/CcSScgRXNShcVcOY8/17ciZjsZBbD/AX4VO4r2iuLnPQbYNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Message-ID:To
 :Reply-To:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CjFBLg4feocA67R7Snn9hTAVTjuyOGDS6JZdh5yPjk4=; b=B
 heN6UhKNh2jJAXJC10GhgF7npNBZiROADyssCT1O5b1R9YIcNHrfDRUNBLhUq2ONoB3kB+PTxbafr
 k71FXwdzHbJd5HlpafFwIHXXiJgkSEL6WeSaqXEUFwumsvRAx9Cll+v3o1Thc5eMq6c0lvDKP8aI9
 8kwlDlRA7Cwclxjw=;
Received: from [211.53.128.215] (helo=MAIL.isd.co.kr)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iRC5X-00FqEJ-Nz
 for linux1394-devel@lists.sourceforge.net; Sun, 03 Nov 2019 09:22:24 +0000
Received: from 192.168.1.163 (217.217.179.17) by MAIL.isd.co.kr (10.10.10.22)
 with Microsoft SMTP Server id 14.3.123.3;
 Sun, 3 Nov 2019 18:22:06 +0900
Date: Sun, 3 Nov 2019 10:22:02 +0100
From: Peter Wong <choimj@isd.co.kr>
To: <linux1394-devel@lists.sourceforge.net>
Message-ID: <27139638.69148.1572772927745.JavaMail.cash@webmail.isd.co.kr>
Subject: Your opportunity
MIME-Version: 1.0
X-Originating-IP: [217.217.179.17]
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [211.53.128.215 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (pw178484[at]gmail.com)
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRC5X-00FqEJ-Nz
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
Reply-To: Peter Wong <pw178484@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Greetings,

Find attached email very confidential. reply for more details

Thanks.
Peter Wong




----------------------------------------------------
This email was sent by the shareware version of Postman Professional.



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
