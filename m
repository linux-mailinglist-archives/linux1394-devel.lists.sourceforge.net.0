Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D054F3DA119
	for <lists+linux1394-devel@lfdr.de>; Thu, 29 Jul 2021 12:32:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1m93LB-000710-Ph; Thu, 29 Jul 2021 10:32:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1m93LA-00070u-Im
 for linux1394-devel@lists.sourceforge.net; Thu, 29 Jul 2021 10:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bIyk89sun6fFWKikw2LAP1wRWLReWmy9I1Krpfi+14Y=; b=QetYh/Izr48/8xWAWb1W1L88n2
 mwvCyrSa7fEtmsrwxxig67Lp/cR2IbSp/f+kJjFMWVqMK539In47MXSUu+kDS3dlpZX1sfpqbtl59
 5aTZkaVbO6jLOJyznbkhr0kxOy11/gXMrI7kohtMY2q4vqckacvLC7FaKVjDkpg7cN2o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bIyk89sun6fFWKikw2LAP1wRWLReWmy9I1Krpfi+14Y=; b=dyOmRpaAPyIT5z/4QFxiUVPjwX
 0GwKUUcjUh8FHcxpdcZUZ4SqSgGU0dE4QNhxg3dpAymOjWX16Mv+qpFra5fLZ5QDhfCyRvuElQ0aD
 3LLjgOaMnlTJ8PuSqIa9vvfXlfUKOzuCE0f+dtGka6a6E6BdwaL+UFzmH9oZlK1ipx+o=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m93L9-006P8T-6E
 for linux1394-devel@lists.sourceforge.net; Thu, 29 Jul 2021 10:32:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9F256601FF;
 Thu, 29 Jul 2021 10:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1627554744;
 bh=evqS+jYgdy4AaHR+PlFUIfPANh3VC9qSJLUKVyCQu2E=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=QtB01bi7tcSTf3qCn/mJiicVJt5X2UEAyOotNQTpfXgGcIwP1UHR9r9GfHd0IDrJh
 bXvzB/vLtOmLnuInGz2KruvBWSWRdRyT8vwbKuKmwy24gihB8GHp3aqeg4qi1F53Gl
 kiIpApj/SIs1sisgDYqhm9AYx0qXIb53qdnWPQ1s=
Date: Thu, 29 Jul 2021 12:32:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Luo Likang <luolikang@nsfocus.com>, security@kernel.org,
 linux-distros@vs.openwall.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org, linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] media: firewire: firedtv-avc: fix a buffer overflow in
 avc_ca_pmt()
Message-ID: <YQKDtRtAC5F7W+bg@kroah.com>
References: <000001d73031$d5304480$7f90cd80$@nsfocus.com>
 <YHaulytonFcW+lyZ@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHaulytonFcW+lyZ@mwanda>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nsfocus.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m93L9-006P8T-6E
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Wed, Apr 14, 2021 at 11:57:59AM +0300, Dan Carpenter wrote:
> The bounds checking in avc_ca_pmt() is not strict enough.  It should
> be checking "read_pos + 4" because it's reading 5 bytes.  If the
> "es_info_length" is non-zero then it reads a 6th byte so there needs to
> be an additional check for that.
> 
> I also added checks for the "write_pos".  I don't think these are
> required because "read_pos" and "write_pos" are tied together so
> checking one ought to be enough.  But they make the code easier to
> understand for me.
> 
> The other problem is that "length" can be invalid.  It comes from
> "data_length" in fdtv_ca_pmt().
> 
> Cc: stable@vger.kernel.org
> Reported-by: Luo Likang <luolikang@nsfocus.com>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> This hardware isn't super common so there is no embargo.  Resending
> through normal lists.
> 
> Oh, another thing is the data_length calculation in fdtv_ca_pmt() seems
> very suspicous.  Reading more than 4 bytes in the loop will lead to
> shift wrapping.
> 
>  drivers/media/firewire/firedtv-avc.c | 14 +++++++++++---
>  drivers/media/firewire/firedtv-ci.c  |  2 ++
>  2 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/firewire/firedtv-avc.c b/drivers/media/firewire/firedtv-avc.c
> index 2bf9467b917d..71991f8638e6 100644
> --- a/drivers/media/firewire/firedtv-avc.c
> +++ b/drivers/media/firewire/firedtv-avc.c
> @@ -1165,7 +1165,11 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int length)
>  		read_pos += program_info_length;
>  		write_pos += program_info_length;
>  	}
> -	while (read_pos < length) {
> +	while (read_pos + 4 < length) {
> +		if (write_pos + 4 >= sizeof(c->operand) - 4) {
> +			ret = -EINVAL;
> +			goto out;
> +		}
>  		c->operand[write_pos++] = msg[read_pos++];
>  		c->operand[write_pos++] = msg[read_pos++];
>  		c->operand[write_pos++] = msg[read_pos++];
> @@ -1177,13 +1181,17 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int length)
>  		c->operand[write_pos++] = es_info_length >> 8;
>  		c->operand[write_pos++] = es_info_length & 0xff;
>  		if (es_info_length > 0) {
> +			if (read_pos >= length) {
> +				ret = -EINVAL;
> +				goto out;
> +			}
>  			pmt_cmd_id = msg[read_pos++];
>  			if (pmt_cmd_id != 1 && pmt_cmd_id != 4)
>  				dev_err(fdtv->device, "invalid pmt_cmd_id %d at stream level\n",
>  					pmt_cmd_id);
>  
> -			if (es_info_length > sizeof(c->operand) - 4 -
> -					     write_pos) {
> +			if (es_info_length > sizeof(c->operand) - 4 - write_pos ||
> +			    es_info_length > length - read_pos) {
>  				ret = -EINVAL;
>  				goto out;
>  			}
> diff --git a/drivers/media/firewire/firedtv-ci.c b/drivers/media/firewire/firedtv-ci.c
> index 9363d005e2b6..2d6992ac5dd6 100644
> --- a/drivers/media/firewire/firedtv-ci.c
> +++ b/drivers/media/firewire/firedtv-ci.c
> @@ -134,6 +134,8 @@ static int fdtv_ca_pmt(struct firedtv *fdtv, void *arg)
>  	} else {
>  		data_length = msg->msg[3];
>  	}
> +	if (data_length > sizeof(msg->msg) - 4)
> +		return -EINVAL;
>  
>  	return avc_ca_pmt(fdtv, &msg->msg[data_pos], data_length);
>  }
> -- 
> 2.30.2
> 

This patch seems to have gotten lost.  Any change of it getting applied?

thanks,

greg k-h


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
