Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 877F31E041E
	for <lists+linux1394-devel@lfdr.de>; Mon, 25 May 2020 02:14:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jd0lD-0004dK-9q; Mon, 25 May 2020 00:14:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1jd0lB-0004cz-Ey
 for linux1394-devel@lists.sourceforge.net; Mon, 25 May 2020 00:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M+KZUleoJpMYAfaZKxijboK8KNHxV3SzA3MyAjZjLKw=; b=bgrzOBtsbrmFl/YZVUaifl4Gv7
 XcS09/tgKDo4z4vnTNMXjVPSFdN+z64AADq8SFMY2wOgG7DmC48KbYJTfMf9vBqzTsIs60TVGU3PN
 kB5WBmQj+TROOJVmcViYY174NkWk5QkClQvUBLw+8IX25vy+oXPgJBFolZPG1P9KwxuI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M+KZUleoJpMYAfaZKxijboK8KNHxV3SzA3MyAjZjLKw=; b=UmZwsfF0flg94x46KKjxJn/3sP
 +hClSO+5sYyiYVm2o80NRBr9etRkbyowecjCDcLEY5Zlwth7/X6uhNUyHdysE1v2BodZxdYcvaczh
 7ElnwDZsFy2XYO4TMVUMeu/ONeFh2UEelIZ6xsUSZIbUD8LXQIHPd0WlLXg+/HQn1iZc=;
Received: from einhorn-mail.in-berlin.de ([217.197.80.20])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jd0l8-009B14-O8
 for linux1394-devel@lists.sourceforge.net; Mon, 25 May 2020 00:14:29 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 04ONtZBW010868
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 25 May 2020 01:55:37 +0200
Date: Mon, 25 May 2020 01:55:32 +0200
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Greg KH <greg@kroah.com>
Subject: Re: [PATCH v2] firewire-core: remove cast of function callback
Message-ID: <20200525015532.0055f9df@kant>
In-Reply-To: <20200524152301.GB21163@kroah.com>
References: <20200524132048.243223-1-o-takashi@sakamocchi.jp>
 <20200524152301.GB21163@kroah.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: callback.mc]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jd0l8-009B14-O8
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
Cc: oscar.carter@gmx.com, keescook@chromium.org,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On May 24 Greg KH wrote:
> On Sun, May 24, 2020 at 10:20:48PM +0900, Takashi Sakamoto wrote:
> > In 1394 OHCI specification, Isochronous Receive DMA context has several
> > modes. One of mode is 'BufferFill' and Linux FireWire stack uses it to
> > receive isochronous packets for multiple isochronous channel as
> > FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL.
> > 
> > The mode is not used by in-kernel driver, while it's available for
> > userspace. The character device driver in firewire-core includes
> > cast of function callback for the mode since the type of callback
> > function is different from the other modes. The case is inconvenient
> > to effort of Control Flow Integrity builds due to
> > -Wcast-function-type warning.
> > 
> > This commit removes the cast. A inline helper function is newly added
> > to initialize isochronous context for the mode. The helper function
> > arranges isochronous context to assign specific callback function
> > after call of existent kernel API. It's noticeable that the number of
> > isochronous channel, speed, the size of header are not required for the
> > mode. The helper function is used for the mode by character device
> > driver instead of direct call of existent kernel API.
> > 
> > Changes in v2:
> >  - unexport helper function
> >  - use inline for helper function
> >  - arrange arguments for helper function
> >  - tested by libhinoko
> > 
> > Reported-by: Oscar Carter <oscar.carter@gmx.com>
> > Reference: https://lore.kernel.org/lkml/20200519173425.4724-1-oscar.carter@gmx.com/
> > Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> > ---
> >  drivers/firewire/core-cdev.c | 40 +++++++++++++++---------------------
> >  include/linux/firewire.h     | 16 +++++++++++++++
> >  2 files changed, 33 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> > index 6e291d8f3a27..7cbf6df34b43 100644
> > --- a/drivers/firewire/core-cdev.c
> > +++ b/drivers/firewire/core-cdev.c
> > @@ -957,7 +957,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
> >  {
> >  	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
> >  	struct fw_iso_context *context;
> > -	fw_iso_callback_t cb;
> >  	int ret;
> >  
> >  	BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
> > @@ -965,32 +964,27 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
> >  		     FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL !=
> >  					FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL);
> >  
> > -	switch (a->type) {
> > -	case FW_ISO_CONTEXT_TRANSMIT:
> > -		if (a->speed > SCODE_3200 || a->channel > 63)
> > -			return -EINVAL;
> > -
> > -		cb = iso_callback;
> > -		break;
> > -
> > -	case FW_ISO_CONTEXT_RECEIVE:
> > -		if (a->header_size < 4 || (a->header_size & 3) ||
> > -		    a->channel > 63)
> > -			return -EINVAL;
> > -
> > -		cb = iso_callback;
> > -		break;
> > -
> > -	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
> > -		cb = (fw_iso_callback_t)iso_mc_callback;
> > -		break;
> > +	if (a->type == FW_ISO_CONTEXT_TRANSMIT ||
> > +	    a->type == FW_ISO_CONTEXT_RECEIVE) {
> > +		if (a->type == FW_ISO_CONTEXT_TRANSMIT) {
> > +			if (a->speed > SCODE_3200 || a->channel > 63)
> > +				return -EINVAL;
> > +		} else {
> > +			if (a->header_size < 4 || (a->header_size & 3) ||
> > +			    a->channel > 63)
> > +				return -EINVAL;
> > +		}
> >  
> > -	default:
> > +		context = fw_iso_context_create(client->device->card, a->type,
> > +					a->channel, a->speed, a->header_size,
> > +					iso_callback, client);
> > +	} else if (a->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
> > +		context = fw_iso_mc_context_create(client->device->card,
> > +						   iso_mc_callback, client);
> > +	} else {
> >  		return -EINVAL;
> >  	}
> >  
> > -	context = fw_iso_context_create(client->device->card, a->type,
> > -			a->channel, a->speed, a->header_size, cb, client);
> >  	if (IS_ERR(context))
> >  		return PTR_ERR(context);
> >  	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
> > diff --git a/include/linux/firewire.h b/include/linux/firewire.h
> > index aec8f30ab200..bff08118baaf 100644
> > --- a/include/linux/firewire.h
> > +++ b/include/linux/firewire.h
> > @@ -453,6 +453,22 @@ struct fw_iso_context {
> >  struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
> >  		int type, int channel, int speed, size_t header_size,
> >  		fw_iso_callback_t callback, void *callback_data);
> > +
> > +static inline struct fw_iso_context *fw_iso_mc_context_create(
> > +						struct fw_card *card,
> > +						fw_iso_mc_callback_t callback,
> > +						void *callback_data)
> > +{
> > +	struct fw_iso_context *ctx;
> > +
> > +	ctx = fw_iso_context_create(card, FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL,
> > +				    0, 0, 0, NULL, callback_data);
> > +	if (!IS_ERR(ctx))
> > +		ctx->callback.mc = callback;
> > +
> > +	return ctx;
> > +}  
> 
> Why is this in a .h file?  What's wrong with just putting it in the .c
> file as a static function?  There's no need to make this an inline,
> right?

There is no need for this in a header.
Furthermore, I prefer the original switch statement over the nested if/else.

Here is another proposal; I will resend it later as a proper patch.

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 719791819c24..bece1b69b43f 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -957,7 +957,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 {
 	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
 	struct fw_iso_context *context;
-	fw_iso_callback_t cb;
 	int ret;
 
 	BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
@@ -969,20 +968,15 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	case FW_ISO_CONTEXT_TRANSMIT:
 		if (a->speed > SCODE_3200 || a->channel > 63)
 			return -EINVAL;
-
-		cb = iso_callback;
 		break;
 
 	case FW_ISO_CONTEXT_RECEIVE:
 		if (a->header_size < 4 || (a->header_size & 3) ||
 		    a->channel > 63)
 			return -EINVAL;
-
-		cb = iso_callback;
 		break;
 
 	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		cb = (fw_iso_callback_t)iso_mc_callback;
 		break;
 
 	default:
@@ -990,9 +984,15 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	}
 
 	context = fw_iso_context_create(client->device->card, a->type,
-			a->channel, a->speed, a->header_size, cb, client);
+			a->channel, a->speed, a->header_size, NULL, client);
 	if (IS_ERR(context))
 		return PTR_ERR(context);
+
+	if (a->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
+		context->callback.mc = iso_mc_callback;
+	else
+		context->callback.sc = iso_callback;
+
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
 		context->drop_overflow_headers = true;
 

-- 
Stefan Richter
-======--=-- -=-= ==--=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
