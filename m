Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB0739D8BB
	for <lists+linux1394-devel@lfdr.de>; Mon,  7 Jun 2021 11:27:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lqBXN-0001mi-LL; Mon, 07 Jun 2021 09:27:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1lqBXL-0001mI-S2
 for linux1394-devel@lists.sourceforge.net; Mon, 07 Jun 2021 09:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2WUHVfXBkcawe37HHm/5hrwgodeUqB7bnVk60FWs2VM=; b=ZW7dGC4tPCK+oA7PEoWJZZTRhg
 ZorAfC+TBaabQ17N6febVhZKUmFz1TA+A+0vzTxo1jZLmNFmWptkyoBw3NtSLOfdyaXR/75Q+6m9E
 bK9PlIswP9YrZQztSrK3Y0CjbKr95hdee5DRdyf3E/WVMZ7QfwIfB11tOH+onBG8ybu0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2WUHVfXBkcawe37HHm/5hrwgodeUqB7bnVk60FWs2VM=; b=cHIJnTKDgyZgC8N6LTcHGtDhv/
 983ecRdTcdIFezAg8lP8VTxs4fSDwnQdWqr0j2qNbxilOOVGo4zxMwiSsj6VwcZzefDn498eRbNlz
 DVgK7lUSXuynNyU6ARj3SJLCagmJgnaprIFPyCUyhSvWKQNmxF9bin9hmw+HR/1icZ8Q=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqBXE-00DUYk-4H
 for linux1394-devel@lists.sourceforge.net; Mon, 07 Jun 2021 09:27:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 071B0610A1;
 Mon,  7 Jun 2021 09:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1623058018;
 bh=KO0ay+dCHrHSAS+hWho1t9DunNnSg9fCilCENS/YlGY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xSiXwKh2uEcA4kRyocx12eHOiLKq9ex6vWlSVdnwoJ3zVlSwFTcmKpTIkxw0NaUvB
 WgLt8gltSvMKLEHrGDPWcJnFCPqXNjdOqFQrGE8RLtpv+bgP1uYwgckvfDrUmq+fNP
 2lfaonnQQaWLcwfelFZSTomMe2B8d8VaLpNrtiCU=
Date: Mon, 7 Jun 2021 11:26:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yang Yanchao <yangyanchao6@huawei.com>
Subject: Re: [PATCH] media firewire firedtv-avc fix a buffer overflow in
 avc_ca_pmt()
Message-ID: <YL3mYOYx2tf729o4@kroah.com>
References: <20210607073900.1298-1-yangyanchao6@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210607073900.1298-1-yangyanchao6@huawei.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lqBXE-00DUYk-4H
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
Cc: security@kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-distros@vs.openwall.org, mchehab@kernel.org, dan.carpenter@oracle.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Jun 07, 2021 at 03:39:00PM +0800, Yang Yanchao wrote:
> For CVE-2021-3542:

What does that mean?  We don't know what cve numbers refer to as there
is no way to really track and update the information with them.  Please
spell out the issue please.

> 
> 1???read_pos will be added four times in the patch, 
> so use "read_pos + 4 < length" and write_pos as well

what is "???" here?

> 
> 2. The last four bits of c->operand are used for CRC, 
> so "sizeof (C - > operand) - 4" is used
> 
> 3. "read_pos+=2" is added after the end of read_pos, so add value (read_pos >= length)
> 
> 4. In order to avoid memcpy crossing the boundary, es_ info_ length > length - read_ pos
> 
> 5. When the date_length is a specific input of a construction,it will cause memcpy
>  to exceed the boundary, "(MSG - > MSG [3] & 0x7F) + date_ length) > (sizeof(msg->msg) - 4)"

I do not understand, this is saying what you did, not _why_ you did it.
can you please rework this to make it more obvious what you are doing?

And shouldn't this be more than one patch?  A series of patches, each
fixing one thing?

And no need to put security@kernel.org on this now that you have sent it
to a public mailing list.

thanks,

greg k-h


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
