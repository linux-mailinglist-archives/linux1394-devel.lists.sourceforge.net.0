Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9028E83EB1A
	for <lists+linux1394-devel@lfdr.de>; Sat, 27 Jan 2024 05:54:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rTahe-0004pS-P0;
	Sat, 27 Jan 2024 04:54:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rTahd-0004pD-6a
 for linux1394-devel@lists.sourceforge.net;
 Sat, 27 Jan 2024 04:54:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5rcChQUgvfsiKRpuPdADrQBlDBpLo/sqa/zUOhH1WQs=; b=g294vQCj1QQYEhiXKbOh8v1S7Z
 lpTQMMcRZhe/QmrzvHKAtSoYQDbbE2nVBBJQ7wtbDhyq/KorSVHFcnRC0vSdZp9FV5E/NUWf1lGxW
 GkkOnU7Szua1JcTiUYINy8jp7izVswSuh87FhNkYUVu0tVJguPbqsQrFoMPwOHLi8VuE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5rcChQUgvfsiKRpuPdADrQBlDBpLo/sqa/zUOhH1WQs=; b=MTCjrd8fVFd7fjdigfk4vwxFYP
 ccFf8JTjyOIreJXFS5LqyYj8nDRrAWHf2dl5n/pZ/MWOKJV2U+xDkR5NslVVV7liFxSBALYlxGH6f
 yxa6qUyVJKgdpOlQBgIHTJ6ChXl5SB/yM90l+b474/YcqwSKWAPME8A4UF+lUBk9QM7c=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rTahY-0003Lz-CP for linux1394-devel@lists.sourceforge.net;
 Sat, 27 Jan 2024 04:54:02 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 34DD21D26FC;
 Fri, 26 Jan 2024 23:53:46 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=MdyZOJ2MLG45IFKa5afWhzsDm/JXXyjM9TF8krZ
 vgEw=; b=XnZwdjn3fAWvCGp+AUGGGeADMRoO8oon8+VOVkf8fcpr9o19obkkKiE
 PVFZr2ZLy/EuTQOCz0PtnSGsCBUOUgFOgKIFMiIcdAlwdkL95WnQ487HEqY2WLV4
 mVCXoOflWC+dmCpaNHjF1KvqjVCLBM83wMFAq7NgU4YS72dIWLRE=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 1B9971D26FA;
 Fri, 26 Jan 2024 23:53:46 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 7955A1D26F9;
 Fri, 26 Jan 2024 23:53:45 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 45F81C09AC;
 Fri, 26 Jan 2024 20:53:44 -0800 (PST)
Date: Fri, 26 Jan 2024 20:53:42 -0800
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH] firewire: core: mask previous entry's type bits when
 looking for leaf
Message-ID: <ZbSMVdOZB1zusXmo@iguana.24-8.net>
References: <ZbJQ0JdbGixJouvn@iguana.24-8.net>
 <20240126011705.GA22564@workstation.local>
 <ZbNyHg3TTWpjiieI@iguana.24-8.net>
 <20240126121917.GA99160@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240126121917.GA99160@workstation.local>
X-Pobox-Relay-ID: 0D2A065E-BCD0-11EE-95EC-25B3960A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 26, 2024 at 09:19:17PM +0900, Takashi Sakamoto
 wrote: > I think we can handle the quirk of configuration ROM without changing
 > the kernel API. Would you test the following patch? (not tes [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rTahY-0003Lz-CP
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

On Fri, Jan 26, 2024 at 09:19:17PM +0900, Takashi Sakamoto wrote:
> I think we can handle the quirk of configuration ROM without changing
> the kernel API. Would you test the following patch? (not tested in my
> side).
> 
> ======== 8< --------
> 
> >From 83bf1e04d308ea89c76c64e3168b9701f9d9191b Mon Sep 17 00:00:00 2001
> From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Date: Fri, 26 Jan 2024 20:37:21 +0900
> Subject: [PATCH] firewire: search descriptor leaf just after vendor directory
>  entry in root directory

Hi Takashi,

I tested your patch with the DVMC-DA1. I also tested it with another 
device with normal placement of the leaf entry. In both cases, it works.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
