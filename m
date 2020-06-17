Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FC2202C06
	for <lists+linux1394-devel@lfdr.de>; Sun, 21 Jun 2020 20:46:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jn4z1-0005do-HC; Sun, 21 Jun 2020 18:46:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fthain@telegraphics.com.au>) id 1jlNUX-0003SQ-Ed
 for linux1394-devel@lists.sourceforge.net; Wed, 17 Jun 2020 02:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hs6NFe2CDFVtjH2HijbZhlRUqU74fn08fX9dw89F6VI=; b=Yn4ikB4T5E+qb9fHtCUSGcjA9o
 LzxTvucy+uLsACMMRydX2WPKvEfNVqlpDZXJBZsCmpzXs1ba3IP1BK6wLQFOTxaotsrjCAy3nz2AW
 HGR+qRNLplpvjb/67Ko8FruDcb823rkOQRuyt34xJeMpchw9GEzU4evKZlUeU10WNjwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hs6NFe2CDFVtjH2HijbZhlRUqU74fn08fX9dw89F6VI=; b=XLzCl3GZhPezMb6FSussV1ctl1
 rqW+9anHlCiG4040MxDTeexcwJWq3AFEexdXfWKFzuVfrHFfVIJbMeTk9xjZoBqwf50lZ922PT+id
 pfidzKJVCOFw3ZmCrvJltJML3bA/xm9yFkSU4NCpb+zp2CrekNtCnEvH+bjolZBdUlKo=;
Received: from kvm5.telegraphics.com.au ([98.124.60.144])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jlNUV-008m4Z-VX
 for linux1394-devel@lists.sourceforge.net; Wed, 17 Jun 2020 02:07:53 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id 08FB82787E;
 Tue, 16 Jun 2020 22:07:38 -0400 (EDT)
Date: Wed, 17 Jun 2020 12:07:40 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
In-Reply-To: <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
Message-ID: <alpine.LNX.2.22.394.2006171104540.11@nippy.intranet>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
 <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
 <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-m68k.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: www.mac.linux-m68k.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: www.mac.linux-m68k.org]
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlNUV-008m4Z-VX
X-Mailman-Approved-At: Sun, 21 Jun 2020 18:46:21 +0000
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
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Nicholas Bellinger <nab@linux-iscsi.org>,
 target-devel@vger.kernel.org, Chris Boot <bootc@boo.tc>,
 linux1394-devel@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Tue, 16 Jun 2020, Bart Van Assche wrote:

> 
> As far as I know the sbp driver only has had one user ever and that user 
> is no longer user the sbp driver.

So, you estimate the userbase at zero. Can you give a confidence level? 
Actual measurement is hard because when end users encounter breakage, they 
look for quick workarounds before they undertake post mortem, log 
collection, bug reporting, mailing list discussions, analysis etc.

> So why to keep it in the kernel tree?

Answer: for the same reason it was added to the tree.

Here's a different question: "Why remove it from the kernel tree?"

If maintaining this code is a burden, is it not the kind of tax that all 
developers/users pay to all developers/users? Does this driver impose an 
unreasonably high burden for some reason?

The growth of a maintenance burden in general has lead to the invention of 
design patterns and tooling to minize it. So a good argument for removal 
would describe the nature of the problem, because some driver deficiencies 
can be fixed automatically, and some tooling deficiencies can compound an 
otherwise insignificant or common driver deficiency.

There are spin-off benefits from legacy code besides process improvements. 
Building and testing this sort of code has regularly revealed erroneous 
corner cases in commits elsewhere like API changes and refactoring.

Also, legacy code is used by new developers get experience in code 
modernization. And it provides more training material for neural networks 
that need to be taught to recognize patches that raise quality.

Ten or twenty years ago, I doubt that anyone predicted these (and other) 
spin-off benefits. If we can't predict the benefit, how will we project 
the cost, and use that to justify deletion?

Please see also,
http://www.mac.linux-m68k.org/docs/obsolete.php


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
