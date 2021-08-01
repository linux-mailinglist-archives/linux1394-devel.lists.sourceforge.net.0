Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5F93DCA48
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Aug 2021 08:24:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mA4tl-00020M-U0; Sun, 01 Aug 2021 06:24:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1mA4td-00020B-1f
 for linux1394-devel@lists.sourceforge.net; Sun, 01 Aug 2021 06:24:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ulXVWutu7xibR/Bgxk7WtTcK3pqs3fb1/I6YimQFasA=; b=QFJUyc2QN/o4rhqZWrMyktYXTx
 fFDo8PfkkQEshTHDsRwHhPEOSpAN02cr7xO/594HGe0CG394FjXf3gXTnSzd+Hi8WiS3syYDDfV0e
 OLXAOvpqXmmD5BbtMk2BPTuiQP8sCAu6ljEJOnmVUEZ3v2Y8yjxM80olmDMLuNRwM3RU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ulXVWutu7xibR/Bgxk7WtTcK3pqs3fb1/I6YimQFasA=; b=Q1bCwpwxajKdqkeA1mcDRLr6VS
 kIpVAipBEbIs/+px3lZ9CMo9BgtLxta4AYb9AEzFlMPV12Fn6qhKMsdrUEMYMjSFLKIgWL28i6sbt
 2U3Guc3XZxCtHqVWbJZu/nFG7fulxABsB7VyXeGNZEDGyUP9oTHIN3NKDOzh6SqrVlvU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mA4tV-0006My-6o
 for linux1394-devel@lists.sourceforge.net; Sun, 01 Aug 2021 06:24:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6E5A561054;
 Sun,  1 Aug 2021 06:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1627799046;
 bh=ks/ukZ06hvygJCLIa2PTX+w6AXhvqSLQrTu660ebCaI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LSUOMYxeAibn4TUQS9HCIGYvDQudTCNbPPC0LcVGiCetalbb+XVeMTMXGop70IzFR
 pvuceJDU5XtEgRuVH8/L4V07fOfMqREq+XwG3f24HY4AAK/yDBWWdRL3sFGikpgFG+
 fAyN+32myMKyWuhI/sLFrRcYd+gYIbpX7v2yJ5HQ=
Date: Sun, 1 Aug 2021 08:24:04 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jordy Zomer <jordy@pwning.systems>
Subject: Re: [PATCH] firewire: ohci: make reg_(read|write) unsigned
Message-ID: <YQY+BL4nR9Loddum@kroah.com>
References: <20210731104112.512449-1-jordy@pwning.systems>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210731104112.512449-1-jordy@pwning.systems>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pwning.systems]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mA4tV-0006My-6o
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

On Sat, Jul 31, 2021 at 12:41:12PM +0200, Jordy Zomer wrote:
> The reg_(read|write) functions used to
> take a signed integer as an offset parameter.
> The callers of this function only pass an unsigned integer to it.
> Therefore to make it obviously safe, let's just make this an unsgined
> integer as this is used in pointer arithmetics.
> 
> Signed-off-by: Jordy Zomer <jordy@pwning.systems>
> ---
>  drivers/firewire/ohci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Same thing should probably also be done in
drivers/firewire/init_ohci1394_dma.c for the same inline functions,
right?

Anyway, nice cleanup:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
