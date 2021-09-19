Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC93410CF5
	for <lists+linux1394-devel@lfdr.de>; Sun, 19 Sep 2021 20:46:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mS1pB-0004Fo-74; Sun, 19 Sep 2021 18:46:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <salvatore.bonaccorso@gmail.com>) id 1mS1p1-0004FP-Pg
 for linux1394-devel@lists.sourceforge.net; Sun, 19 Sep 2021 18:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=drpg7YBGnaAbRmge+cSF4APeRN+YB14Bio0RJmTeKiE=; b=TERPn/SVR2qg6NXP3G/tYlzs10
 rY7tdR+EOGEPEI85h5OyJL4hcw/jpYIolR9Ih/TUuNL5F8w1111+DbcEeJWghyGZeUqTZAnf6JuhP
 Brp2qm+3zoB5uAZ+NWr4mzoZhwLrsPla0uu69cmBav/UkwaKyo0ZSFUqsT7d/XQa8Eb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=drpg7YBGnaAbRmge+cSF4APeRN+YB14Bio0RJmTeKiE=; b=LUFUYOJZO3yqqhT9s/FYkczRmz
 vTfBobd7JTwumcZZfM8fqO7Wy7vYXIL6LHHvd/qhxwUq9Anrb5z/4b9EA3PCYQA5X3MO8j7RiuvGb
 VxEXhGfsSZ9W0HumQWfPaSvexwKsiTvddZ9xGYYSIZ61gAOvAOu9gMtJm0sfBGhC7Dyo=;
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mS1p0-00031z-RT
 for linux1394-devel@lists.sourceforge.net; Sun, 19 Sep 2021 18:45:51 +0000
Received: by mail-wr1-f49.google.com with SMTP id i23so24723671wrb.2
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 19 Sep 2021 11:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=drpg7YBGnaAbRmge+cSF4APeRN+YB14Bio0RJmTeKiE=;
 b=e9yPuOmNpAtBJM74zJ3YRSCpfRfzCiUoc/zMId+AK7rR/dkQiQyS5W4ZTiXNA7wqhv
 xUQBrLgsPG+kWO7aCZ9R0VoxXB2hZOPKO507z35Tf/T8l3P11BgXwWwXOkwlLktsUw7s
 wkFjinQ+fVbd7Wtn0OAKWNxX0kux1YlMX2y0xB0Umgb54tUyGG4gQ+7vyjA64zmSq8WG
 XulG0ItL65f3FZk/NWFBzz4/nvzKBwRyHH0JZVEy3ylVdAFYswBZaWtcDzs0TWqg4Ta9
 V6y59R8qQrKfpUmTL3+Lhc72SAorTMWxVKfEhos0bKnbO9EwYcV+JNPnuUF6McJhio0u
 L5DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=drpg7YBGnaAbRmge+cSF4APeRN+YB14Bio0RJmTeKiE=;
 b=VkjwNMCh1htZbU3y7fs3u0Hr1RH4zKkEdTWq5s+0moreiyeYn0B+IqY0eCnVsA8/AC
 CehN/0lTEZIp9iKxCsG3Ok685S03TilkAWvMV6vqmQbRbdq1DjB9HkbGynttUSl9sqiV
 MxTVpYOqw/koTJBQjZDXhjW+OkPNFUtMnzahnV8eYACGHVaPwNyHNINVn3mVFw2t3aj2
 ZXhB24M7W2LgmpmOpEyX0I5kDo+fwfF1r1uvXVZ/g4m+pgT5Ch8H7WZ3Cm3duqhFD7bX
 S4GvxHOZT68mWkMGJMDYlrz3Vnbxp4Dizyv7+uhCEkdSiC2fpPOfaJlZiM/R5As/GNYA
 613g==
X-Gm-Message-State: AOAM533pSrzPzhgaVrucSZE8baiGe6Z9xneq5fdIjCM/wrmJ1sx0euW8
 PhP7kFK823EAtn6YBLHVrVo=
X-Google-Smtp-Source: ABdhPJz3J51kUFsnP8NZfoISrBZzFItEHv99BVdITaYtwfEFcRPm4ztgOjzExMcF1EQwKlFT3pINuw==
X-Received: by 2002:adf:b781:: with SMTP id s1mr23863177wre.319.1632077144509; 
 Sun, 19 Sep 2021 11:45:44 -0700 (PDT)
Received: from eldamar (80-218-24-251.dclient.hispeed.ch. [80.218.24.251])
 by smtp.gmail.com with ESMTPSA id m1sm12492048wmq.10.2021.09.19.11.45.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Sep 2021 11:45:43 -0700 (PDT)
Date: Sun, 19 Sep 2021 20:45:42 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 RESEND] media: firewire: firedtv-avc: fix a buffer
 overflow in avc_ca_pmt()
Message-ID: <YUeFVpGsWFpSPUsM@eldamar.lan>
References: <YRoNTX3Krtw9NdkI@eldamar.lan> <20210816072721.GA10534@kili>
 <20210901104026.GB2129@kadam> <YT39LBTgGL/b/V5N@eldamar.lan>
 <CAHk-=wjOW3Fx8td1Snezd1_9sf8q7KuQx8TyQNR0ypS2rVBHtg@mail.gmail.com>
 <20210913152302.76d57784@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913152302.76d57784@coco.lan>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dan, On Mon, Sep 13, 2021 at 03:23:02PM +0200,
 Mauro Carvalho Chehab wrote: > Em Sun,
 12 Sep 2021 11:26:10 -0700 > Linus Torvalds <torvalds@linuxfoundation.org>
 escreveu: > > > On Sun, Sep 12, 2021 at 6:14 [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.49 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [salvatore.bonaccorso[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mS1p0-00031z-RT
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
Cc: Security Officers <security@kernel.org>,
 Yang Yanchao <yangyanchao6@huawei.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Luo Likang <luolikang@nsfocus.com>, linux1394-devel@lists.sourceforge.net,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Dan,

On Mon, Sep 13, 2021 at 03:23:02PM +0200, Mauro Carvalho Chehab wrote:
> Em Sun, 12 Sep 2021 11:26:10 -0700
> Linus Torvalds <torvalds@linuxfoundation.org> escreveu:
> 
> > On Sun, Sep 12, 2021 at 6:14 AM Salvatore Bonaccorso <carnil@debian.org> wrote:
> > >
> > > On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote:  
> > > > On Mon, Aug 16, 2021 at 10:27:22AM +0300, Dan Carpenter wrote:  
> > > > > The bounds checking in avc_ca_pmt() is not strict enough.  It should
> > > > > be checking "read_pos + 4" because it's reading 5 bytes.  If the
> > > > > "es_info_length" is non-zero then it reads a 6th byte so there needs to
> > > > > be an additional check for that.
> > > > >
> > > > > I also added checks for the "write_pos".  I don't think these are
> > > > > required because "read_pos" and "write_pos" are tied together so
> > > > > checking one ought to be enough.  
> > 
> > They may be in sync at a fixed offset, but the buffer length of the
> > read ("int length") is not in sync with the buffer length for the
> > write ("sizeof(c->operand)").
> > 
> > So I do think the write pos limit checking is actually necessary and needed.
> > 
> > > > > RESEND: this patch got lost somehow.  
> > > >
> > > > What the heck?  Someone on patchwork just marked this patch as obsolete
> > > > again!!!  
> > 
> > Can we please make sure patchwork has some logging so that that kind
> > of thing shows _who_ did this?
> 
> I've been wanting a feature like that on patchwork for years. Basically,
> when there's more then a single person capable of accessing a patchwork
> instance, there's no way to log who changed the status, nor to control who
> can delegate a patch to someone else or not.
> 
> At least for me, touching patchwork is very hard, as the the entire login
> logic, as well as the database model itself, is abstracted by Django. So,
> I can't simply change a SQL insert clause there to add something else to
> their logs nor to change the sent email that it is pushed when a patch
> status changed.
> 
> I ended adding an internal log to indicate when I do some changes on my
> patchwork instance via script a couple of years ago.
> 
> > > Someone knows what is going on here, i.e. what is the problem?  
> > 
> > Dan, can you just send that fix to me directly, with the fixed commit
> > message (see above), and we can close this.
> 
> Feel free to add my:
> 
> 	Acked-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

I'm sorry for prodding again, I guess I'm becoming a bit annoying :-/

Dan, could you sent the patch with the above to Linus directly so it
can show up in at least 5.15-rc3? I guess it's now to late for
5.15-rc2.

Regards,
Salvatore


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
