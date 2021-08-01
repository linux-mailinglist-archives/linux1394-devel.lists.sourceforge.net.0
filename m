Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E10A3DCA4F
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Aug 2021 08:25:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mA4uk-0004lk-RV; Sun, 01 Aug 2021 06:25:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1mA4uj-0004lU-Fx
 for linux1394-devel@lists.sourceforge.net; Sun, 01 Aug 2021 06:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z8n48F/m7v+Z/uS758JC71wgHXLBUpsybZKtgMwEUfk=; b=GoO95MIfuKU07l7/daLYpb0EJZ
 vQyLg/e4TAP2S+IP1pzDUOdh1/g6iDuDKcbFcfR02rsGixOjIhbc37UXMZIrDcx+0F74II26kAEbg
 MLxBQkJrUHlk+73jTZC/4DpPYE9Fisllys/vpmlPcLB567IEkGOXhRp5Ci7aHYb+JMJs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z8n48F/m7v+Z/uS758JC71wgHXLBUpsybZKtgMwEUfk=; b=L4ZtgH87lYhcpuDvAzH+rGr/mF
 nUuuxIakcN6qABTUiEa/my/hiun6lzHWU2gWeleP9WhXTjTBPxx4hKy8v1UO4+FJNQQJEmHVS1bJ1
 ooH1Rc8yUfMf1itV5ME483YU4RP+ANBAbB6AW0ZHRSHQBEmfgDEC9hrEf82W3+VrRucM=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mA4uh-0006Oi-SS
 for linux1394-devel@lists.sourceforge.net; Sun, 01 Aug 2021 06:25:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DB87A61057;
 Sun,  1 Aug 2021 06:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1627799126;
 bh=Uur95jcj5xjC1fQ1fgKkATD2aJ8tRMWLGjQ2YoCRlpo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d9uZmwshEStcEHfd+SmaPCqMk6Pn6PcV8Bg9dxKs5AxUhqg/ctUb3BMxqByxxv+dQ
 trZhsGF1pETq9PYNDZQuRh+ILOf5iYfqPc4vV51EGgTeRPW9+1MHZQTUH3PPZc/AXs
 1lNioAnKwjp44GmD6eBLmBD/6EmINIA8Y2wgBBYc=
Date: Sun, 1 Aug 2021 08:25:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jordy Zomer <jordy@pwning.systems>
Subject: Re: [PATCH] firewire: ohci: make reg_(read|write) unsigned
Message-ID: <YQY+U9i8Zw7OAKOO@kroah.com>
References: <20210731104112.512449-1-jordy@pwning.systems>
 <YQY+BL4nR9Loddum@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YQY+BL4nR9Loddum@kroah.com>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pwning.systems]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mA4uh-0006Oi-SS
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

On Sun, Aug 01, 2021 at 08:24:04AM +0200, Greg Kroah-Hartman wrote:
> On Sat, Jul 31, 2021 at 12:41:12PM +0200, Jordy Zomer wrote:
> > The reg_(read|write) functions used to
> > take a signed integer as an offset parameter.
> > The callers of this function only pass an unsigned integer to it.
> > Therefore to make it obviously safe, let's just make this an unsgined
> > integer as this is used in pointer arithmetics.
> > 
> > Signed-off-by: Jordy Zomer <jordy@pwning.systems>
> > ---
> >  drivers/firewire/ohci.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Same thing should probably also be done in
> drivers/firewire/init_ohci1394_dma.c for the same inline functions,
> right?

And sound/firewire/isight.c also could use this.  Seems like there was
some copy/paste in firewire drivers :)

thanks,

greg k-h


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
