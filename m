Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C6D41759A
	for <lists+linux1394-devel@lfdr.de>; Fri, 24 Sep 2021 15:24:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mTlBn-0008IL-Tw; Fri, 24 Sep 2021 13:24:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1mTlBm-0008IE-8t
 for linux1394-devel@lists.sourceforge.net; Fri, 24 Sep 2021 13:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86HTcRv/fRLZQUnGdGHlAvLz99wbnAkzAM/lvuSrZRA=; b=aB/lfdXwqmbI1oRJe2HKorTDzi
 Cqkspo2Agb5WJWZaCdTN3KM/iPZXdTwSDoZxZQG0wmk7J3tBDJO1S+vCy6JhYX73I+WZYmacyo5Ae
 cTnl9/4BF21Zs312Bjwy1qCZWPCawb1+o5gTyQ4cTdfE+OmbC/3rsk98O5CRY7c9VVw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=86HTcRv/fRLZQUnGdGHlAvLz99wbnAkzAM/lvuSrZRA=; b=ea/JY6gGg7bSYL6Fd38Z9MsB/k
 +ldpAPjxR8ClBUjfM+bAJJsOU68PVXmgAOZcZtK+dmPutUiTkEcZbuDqN4DNyNUFksXY7xxXjIYIp
 PNbNkLKqZFhc0JieCq5qH/0QYO+o36X2/NY6gSZlYyWMFFqfJn9DHyqcAkYcukvxKJNU=;
Received: from gateway24.websitewelcome.com ([192.185.51.36])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTlBk-0001Oq-7m
 for linux1394-devel@lists.sourceforge.net; Fri, 24 Sep 2021 13:24:30 +0000
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id 7169118B9D
 for <linux1394-devel@lists.sourceforge.net>;
 Fri, 24 Sep 2021 08:00:19 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id TkoNmNuZogm2UTkoNm9GMl; Fri, 24 Sep 2021 08:00:19 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86HTcRv/fRLZQUnGdGHlAvLz99wbnAkzAM/lvuSrZRA=; b=sndPoOwSyUZPjfstyebyGBCeqd
 BhRmSwm/n5kavwP22mwmgrsXCZu6yvk0lxH1O9z9qmg32sEcig18asGM0652ziGb59uk2GEe3ouNU
 HN9sZEmgFB/ACP99Xa0Q3afjEPY2gfVPw7n3pb5PLMczznuQek2mHyYdKfawjdwlCD5VBIFt/lANq
 WgSMzg1G3u3lYb7vrANEhTvaslj6FN/qf4Jscg5uStQ9M4uNAT04ulSYAP0vAPYGiWiKZ7sZFFqcd
 KXNg1mCNNbLjmRfudISXfVMawFwkI8DijIf9MUOiwwwFSdHIlkuA0a6KBFpi4KkyFigHftKu2aZWI
 q2nqXT5g==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:43780
 helo=[192.168.15.9])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <gustavo@embeddedor.com>)
 id 1mTkoN-003pdC-1u; Fri, 24 Sep 2021 08:00:19 -0500
Subject: Re: [PATCH][next] firewire: cdev: Fix function cast error
To: Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>
References: <20210924105733.GA78013@embeddedor>
 <5BB921B7-9D3C-460F-98D1-F277D31DC849@chromium.org>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <b0d1d4e2-d8ee-77ed-c9ba-2a61d146b86c@embeddedor.com>
Date: Fri, 24 Sep 2021 08:04:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <5BB921B7-9D3C-460F-98D1-F277D31DC849@chromium.org>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1mTkoN-003pdC-1u
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.9])
 [187.162.31.110]:43780
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/24/21 07:47, Kees Cook wrote: > I thought this looked
 familiar... > >
 https://lore.kernel.org/lkml/20200530090839.7895-1-oscar.carter@gmx.com/
 Oh, cool. :) 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.51.36 listed in list.dnswl.org]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [192.185.51.36 listed in dnsbl-1.uceprotect.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: embeddedor.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.185.51.36 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mTlBk-0001Oq-7m
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
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net



On 9/24/21 07:47, Kees Cook wrote:

> I thought this looked familiar...
> 
> https://lore.kernel.org/lkml/20200530090839.7895-1-oscar.carter@gmx.com/

Oh, cool. :)

> I think someone just needs to pick this up since it got past review, etc.

Yeah. I can take it in my -next tree if nobody cares.

Thanks
--
Gustavo


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
