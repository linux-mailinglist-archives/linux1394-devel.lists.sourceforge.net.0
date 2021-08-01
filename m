Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 179713DCBCD
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Aug 2021 15:31:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mABYO-0003dt-Rv; Sun, 01 Aug 2021 13:30:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1mABYD-0003dU-RF
 for linux1394-devel@lists.sourceforge.net; Sun, 01 Aug 2021 13:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mgJsGWCAotORFPbxOqzuUR7a5Mau6aYT+9X7MwNILnc=; b=CgPC0F5InKCQ/1PpHnO3hmW0bO
 IlqYAf2+MhCH62yUxoSrWbGVaoUhpzYH4mSsVnp/BbaJS6VdorW4RRJZ8e4mAhjQcQ/6em8ZUkgsZ
 qNrjijTTAwGbPfyfNwKjGsrrk30dg+MLXAVPZBAmcXRzjlgkTQVxjGtuhe+T97rl7DUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mgJsGWCAotORFPbxOqzuUR7a5Mau6aYT+9X7MwNILnc=; b=eczh9FD0MtwL+Yv3IrTQLUe4hv
 e7PWKQRvMZ2SFLKNELfoHzzMgiL5TVauPLgdhf0B+86z0U3tnIdF5Q+Nront2ENJEUN2EXgfuzHW5
 rFqGgnHI/rDOM4wXHvMi60G1BhbCKxi/sIY/ur2oMnSq9UeAvj0RUQmTQKg5DtbJKl0s=;
Received: from einhorn.in-berlin.de ([192.109.42.8]
 helo=einhorn-mail-out.in-berlin.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mABY6-009PIV-AN
 for linux1394-devel@lists.sourceforge.net; Sun, 01 Aug 2021 13:30:45 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 171DUQ6w005133
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sun, 1 Aug 2021 15:30:28 +0200
Date: Sun, 1 Aug 2021 15:30:24 +0200
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] firewire: ohci: make reg_(read|write) unsigned
Message-ID: <20210801153024.21941652@kant>
In-Reply-To: <YQY+U9i8Zw7OAKOO@kroah.com>
References: <20210731104112.512449-1-jordy@pwning.systems>
 <YQY+BL4nR9Loddum@kroah.com> <YQY+U9i8Zw7OAKOO@kroah.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.109.42.8 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pwning.systems]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mABY6-009PIV-AN
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
Cc: Jordy Zomer <jordy@pwning.systems>, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Aug 01 Greg Kroah-Hartman wrote:
> On Sun, Aug 01, 2021 at 08:24:04AM +0200, Greg Kroah-Hartman wrote:
> > On Sat, Jul 31, 2021 at 12:41:12PM +0200, Jordy Zomer wrote:  
> > > The reg_(read|write) functions used to
> > > take a signed integer as an offset parameter.
> > > The callers of this function only pass an unsigned integer to it.
> > > Therefore to make it obviously safe, let's just make this an unsgined
> > > integer as this is used in pointer arithmetics.
> > > 
> > > Signed-off-by: Jordy Zomer <jordy@pwning.systems>
> > > ---
> > >  drivers/firewire/ohci.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)  
> > 
> > Same thing should probably also be done in
> > drivers/firewire/init_ohci1394_dma.c for the same inline functions,
> > right?  

Yes, register offsets are always non-negative; the lowest register address
is used as the base address.  All of the offset values are taken from
macros which are define in ohci.h.

> And sound/firewire/isight.c also could use this.  Seems like there was
> some copy/paste in firewire drivers :)

These offsets are non-negative too; they defined as macros at the top of
isight.c.  However, here we aren't in the 32 bit (?) PCI register space but
in the 48 bit FireWire node address space, which is why the functions which
are wrapped up by reg_read/write() --- snd_fw_transaction() and
fw_run_transaction() --- use u64 or unsigned long long for @offset.

Long story short, isight.c::reg_read/write() could use u32 or unsigned int
or u64 or unsigned long long for @offset; it's going to be added to an u64
so maybe that's what we should use right away?
-- 
Stefan Richter
-======--=-= =--- ----=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
