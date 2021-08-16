Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 873DB3ECEED
	for <lists+linux1394-devel@lfdr.de>; Mon, 16 Aug 2021 09:02:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mFWd6-0008AY-0t; Mon, 16 Aug 2021 07:01:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <salvatore.bonaccorso@gmail.com>) id 1mFWcz-0008AM-Av
 for linux1394-devel@lists.sourceforge.net; Mon, 16 Aug 2021 07:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=atZSkhJ4AKxZwYu5ftachxHVd6K9Xz70HfrbUnQgBiY=; b=auXUzc0G6syawapsz6U1aWKUha
 zQPk23Hgzaewerhe2AzfiFGVX5KY5+ktFXrJ5I6YRlMpmjEEwziPb2vNCUMiOojly+wQuKMzE5Y90
 SoFejaVRrRsI5McyKlNBa7eH4Iz+hx7YWRkgkX4NcTtskyv8edYv7ID4nesLFWTeA2m0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=atZSkhJ4AKxZwYu5ftachxHVd6K9Xz70HfrbUnQgBiY=; b=fpj7hy4bCJaGW8TYbz1rhVtb/9
 J2XK613ZETuuwcm2nI1zzXmaGj+0dfB2TaVEj+ht4iAxOqpmz5wPyk2xOc0LRtnnNKU3wt3NCH1hg
 ZR7nBPfBmlZD2HKg83br4lVmtKjnabkk/fMN2152ElEEBIvl+F8pQeg1ZaQZVji919l4=;
Received: from mail-ej1-f51.google.com ([209.85.218.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mFWcv-0080wZ-Lb
 for linux1394-devel@lists.sourceforge.net; Mon, 16 Aug 2021 07:01:45 +0000
Received: by mail-ej1-f51.google.com with SMTP id bt14so14120362ejb.3
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 16 Aug 2021 00:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=atZSkhJ4AKxZwYu5ftachxHVd6K9Xz70HfrbUnQgBiY=;
 b=tlUS/1xl2gL4ciLFHGnJDWLkBT8NGR2fr06JmpT1EHeAVma6h4hmM+MGMryvp74Hgm
 KQG1KZpYT9mKwxBLUgra8Dukq8SdNWfmX2i6HRgU2fBFtAl8Zu2denB5zIRrlW/3q66D
 G4mihTNK/3Mz2IJxRIntQGwJTUo0Gfwb4HWDw9STMsm2RrjnQqWl+U+wc4YFGd6s7FV4
 GeQwH6mLxsdtOmXTsjg+zaNAmnL6g6dMLf3vzQIu3Ne5VLxOpW2mtoaDSU5LQq9T5N0t
 xkt0NrYlhVkpekwA4WDEHk0Ibu3+Q601X6rLOQUc0mvp9H0qRhPRJIIE84a1ElYAYa2Y
 5LKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=atZSkhJ4AKxZwYu5ftachxHVd6K9Xz70HfrbUnQgBiY=;
 b=gEePIc6n4dD7efiyvVBTwZpC/FgxQI2UkIKfqc3PjSkIUM3Nye9E4kWnjDPK2WLhiR
 fgq2hVJHj7DizJALaShUltYI74W8cuTxCs2UWOTECu5tGhmLYnyWL6x5ft2K3N/em1ag
 h+uFrMUUAMMk+dz/4GLa5vuhBV0JFa1h/kg9nsskqbcP9ZrTtprQIGzOXCgBqR4s0IUt
 FcwUw9XcBfPQHe7V1yKwE2sWyE3fulIL5nI4UuMTiULHFPTbj8uk/Hngnbi0fsI8+Dv6
 3ICa40QFWdbn+81wt1lJIQv2krPvXgL8gkpBe+1/YAUDuK+NpPYWmL+GtRawsfMvVs7k
 iojA==
X-Gm-Message-State: AOAM530adh4EHfFIDUb4mgOIl7rNgO4GPZc1aJ2E165sM5eNi3GPi7FX
 3TCiM4l4fbmOhquY4WMcb0GYKojpsgJpaA==
X-Google-Smtp-Source: ABdhPJwdFew1PgvGjIOibsn7Y2GIVG/0CjZsw4EQzpJqnDy1v24dibEssSMtO+oZcI4gTDWyiQc2wQ==
X-Received: by 2002:a17:907:7718:: with SMTP id
 kw24mr15106423ejc.316.1629097295329; 
 Mon, 16 Aug 2021 00:01:35 -0700 (PDT)
Received: from eldamar (host-82-55-38-10.retail.telecomitalia.it.
 [82.55.38.10])
 by smtp.gmail.com with ESMTPSA id l9sm4393633edt.55.2021.08.16.00.01.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 00:01:34 -0700 (PDT)
Date: Mon, 16 Aug 2021 09:01:33 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] media: firewire: firedtv-avc: fix a buffer overflow in
 avc_ca_pmt()
Message-ID: <YRoNTX3Krtw9NdkI@eldamar.lan>
References: <000001d73031$d5304480$7f90cd80$@nsfocus.com>
 <YHaulytonFcW+lyZ@mwanda> <YQKDtRtAC5F7W+bg@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YQKDtRtAC5F7W+bg@kroah.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (salvatore.bonaccorso[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1mFWcv-0080wZ-Lb
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
Cc: security@kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-distros@vs.openwall.org, Luo Likang <luolikang@nsfocus.com>,
 linux1394-devel@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Thu, Jul 29, 2021 at 12:32:21PM +0200, Greg KH wrote:
> On Wed, Apr 14, 2021 at 11:57:59AM +0300, Dan Carpenter wrote:
> > The bounds checking in avc_ca_pmt() is not strict enough.  It should
> > be checking "read_pos + 4" because it's reading 5 bytes.  If the
> > "es_info_length" is non-zero then it reads a 6th byte so there needs to
> > be an additional check for that.
> > 
> > I also added checks for the "write_pos".  I don't think these are
> > required because "read_pos" and "write_pos" are tied together so
> > checking one ought to be enough.  But they make the code easier to
> > understand for me.
> > 
> > The other problem is that "length" can be invalid.  It comes from
> > "data_length" in fdtv_ca_pmt().
> > 
> > Cc: stable@vger.kernel.org
> > Reported-by: Luo Likang <luolikang@nsfocus.com>
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> > This hardware isn't super common so there is no embargo.  Resending
> > through normal lists.
> > 
> > Oh, another thing is the data_length calculation in fdtv_ca_pmt() seems
> > very suspicous.  Reading more than 4 bytes in the loop will lead to
> > shift wrapping.
> > 
> >  drivers/media/firewire/firedtv-avc.c | 14 +++++++++++---
> >  drivers/media/firewire/firedtv-ci.c  |  2 ++
> >  2 files changed, 13 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/media/firewire/firedtv-avc.c b/drivers/media/firewire/firedtv-avc.c
> > index 2bf9467b917d..71991f8638e6 100644
> > --- a/drivers/media/firewire/firedtv-avc.c
> > +++ b/drivers/media/firewire/firedtv-avc.c
> > @@ -1165,7 +1165,11 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int length)
> >  		read_pos += program_info_length;
> >  		write_pos += program_info_length;
> >  	}
> > -	while (read_pos < length) {
> > +	while (read_pos + 4 < length) {
> > +		if (write_pos + 4 >= sizeof(c->operand) - 4) {
> > +			ret = -EINVAL;
> > +			goto out;
> > +		}
> >  		c->operand[write_pos++] = msg[read_pos++];
> >  		c->operand[write_pos++] = msg[read_pos++];
> >  		c->operand[write_pos++] = msg[read_pos++];
> > @@ -1177,13 +1181,17 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int length)
> >  		c->operand[write_pos++] = es_info_length >> 8;
> >  		c->operand[write_pos++] = es_info_length & 0xff;
> >  		if (es_info_length > 0) {
> > +			if (read_pos >= length) {
> > +				ret = -EINVAL;
> > +				goto out;
> > +			}
> >  			pmt_cmd_id = msg[read_pos++];
> >  			if (pmt_cmd_id != 1 && pmt_cmd_id != 4)
> >  				dev_err(fdtv->device, "invalid pmt_cmd_id %d at stream level\n",
> >  					pmt_cmd_id);
> >  
> > -			if (es_info_length > sizeof(c->operand) - 4 -
> > -					     write_pos) {
> > +			if (es_info_length > sizeof(c->operand) - 4 - write_pos ||
> > +			    es_info_length > length - read_pos) {
> >  				ret = -EINVAL;
> >  				goto out;
> >  			}
> > diff --git a/drivers/media/firewire/firedtv-ci.c b/drivers/media/firewire/firedtv-ci.c
> > index 9363d005e2b6..2d6992ac5dd6 100644
> > --- a/drivers/media/firewire/firedtv-ci.c
> > +++ b/drivers/media/firewire/firedtv-ci.c
> > @@ -134,6 +134,8 @@ static int fdtv_ca_pmt(struct firedtv *fdtv, void *arg)
> >  	} else {
> >  		data_length = msg->msg[3];
> >  	}
> > +	if (data_length > sizeof(msg->msg) - 4)
> > +		return -EINVAL;
> >  
> >  	return avc_ca_pmt(fdtv, &msg->msg[data_pos], data_length);
> >  }
> > -- 
> > 2.30.2
> > 
> 
> This patch seems to have gotten lost.  Any change of it getting applied?

As far I can see there was then a version 2 of the patch, but that one
got list somewhere. Friendly ping on this thread :)

Regards,
Salvatore


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
