Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 157D1428768
	for <lists+linux1394-devel@lfdr.de>; Mon, 11 Oct 2021 09:05:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mZpMi-0001Hy-RK; Mon, 11 Oct 2021 07:04:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <salvatore.bonaccorso@gmail.com>) id 1mZpMQ-0001Fu-PL
 for linux1394-devel@lists.sourceforge.net; Mon, 11 Oct 2021 07:04:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=du8QhncD3/8fEKWYuS9xbEo9XYz4mqp2LK0z+3qErJw=; b=jvsk1dYksD0Ttzl4PVu+Jny/Kz
 nSepJQd2D9ajiiyWQm8lLL7gD3UKIu1qO3+fIU546NlxArDZVZx3hS1T6GkXBXFgCCOPL88BeHIRe
 z8MS3sUhG2k8e9ad/kECvglcDfni5v/5lM680rCa1cUpe9YXRbAaQIU8PDpagZ5DhGfo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=du8QhncD3/8fEKWYuS9xbEo9XYz4mqp2LK0z+3qErJw=; b=eAJPVri7sipc7/M+AbSZK7lWyr
 FbINcpyCCSqVmKiyxYGrvyfyM1VFy7Lf6REzZS8OgK8gyRWW5YlnSBBKmiCEGd+wIabl7XGNlRhac
 3SWswUlx/DSV19M3XoKCFGeRI9XKaD8boBu32Rz7z0rzCrMFWj68ini78WwYzIWI1JvE=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mZpMM-0020B6-Uj
 for linux1394-devel@lists.sourceforge.net; Mon, 11 Oct 2021 07:04:34 +0000
Received: by mail-wr1-f43.google.com with SMTP id t2so52747459wrb.8
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 11 Oct 2021 00:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=du8QhncD3/8fEKWYuS9xbEo9XYz4mqp2LK0z+3qErJw=;
 b=mcXEIlsaPuULrUMzeX39RcAhbqTtTfElSCJS3WVgjfxAL9tZHwPbopwoXpNwOojWvu
 W/109PJmzQWyKESOoQptXGJgi6vLRw3ePcmqxZ7Moxm96ZMb1G+QnBY4ctdpFstCut5C
 dDnpw3Ptxu//YElmTFSsSh/OLOYkyFOwVHnSxPZ+LvUqgI7cWZIpJkft35Rcj0m3bHW1
 u0mcB7xoAIky3nwZZNwa6AHL1DTfpTCS26qiMSvVdtnypakaeRgO4cqDANsv+lMPR1b/
 slf+9itOKhiTtMlKTji76nAQDp8js7DY/T0FTqmbBm6n0HjMAQVs+dZe+ytr0GrNae4t
 x/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=du8QhncD3/8fEKWYuS9xbEo9XYz4mqp2LK0z+3qErJw=;
 b=vVjZpe9lYEGD1fLLZ0pZMWGs9SnEIikjsZ7d4c6gKf2uZlFniWcgHA1UPWokJ9IVDO
 4QVaFsyl7lGSMTR+rDDqLwC1Awuyzr/SG7SD6C2kCkcr1EKDKq07XLbt/rSeRoXs3g1M
 jW6YB5qI8irxmAVk9n5HMXXmAEfCjzWMd0WncfVlkxnhyAm+MjxCu/sEOc1CgmtjFFs2
 7AZbaGa8xqa9Ysz6deXCdQl2ulq2lMv4LufKxVxhZ0pv0BcXHGHH0owVH3ojdEDaLXIn
 RPwbWgwWclYO6na5HuaEogz2wMAM28myggcGWJci+rxcd0pAS/b/lFRFfX9NJQTzI6pD
 taEA==
X-Gm-Message-State: AOAM530GF8/gn7upayKk8Nxl8pqXU1HozQoz7Uu5aQb5Z9DWI6d3ItIR
 /mC+NPtwcD6QC0tY19AzzAg=
X-Google-Smtp-Source: ABdhPJxMJ2uYUJkht+pCADr1MZqe3PlCBbSqVW71DPcm0BN2QsLs+duucXukcoyGivjscHe1jnAXwQ==
X-Received: by 2002:adf:aa88:: with SMTP id h8mr22628450wrc.112.1633935864505; 
 Mon, 11 Oct 2021 00:04:24 -0700 (PDT)
Received: from eldamar (80-218-24-251.dclient.hispeed.ch. [80.218.24.251])
 by smtp.gmail.com with ESMTPSA id e8sm9620052wrg.48.2021.10.11.00.04.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 00:04:24 -0700 (PDT)
Date: Mon, 11 Oct 2021 09:04:23 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 RESEND] media: firewire: firedtv-avc: fix a buffer
 overflow in avc_ca_pmt()
Message-ID: <YWPh9zin9JuQinwd@eldamar.lan>
References: <YRoNTX3Krtw9NdkI@eldamar.lan> <20210816072721.GA10534@kili>
 <20210901104026.GB2129@kadam> <YT39LBTgGL/b/V5N@eldamar.lan>
 <CAHk-=wjOW3Fx8td1Snezd1_9sf8q7KuQx8TyQNR0ypS2rVBHtg@mail.gmail.com>
 <20210913152302.76d57784@coco.lan> <YUeFVpGsWFpSPUsM@eldamar.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YUeFVpGsWFpSPUsM@eldamar.lan>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sun, Sep 19, 2021 at 08:45:42PM +0200,
 Salvatore Bonaccorso
 wrote: > Hi Dan, > > On Mon, Sep 13, 2021 at 03:23:02PM +0200, Mauro Carvalho
 Chehab wrote: > > Em Sun, 12 Sep 2021 11:26:10 -0700 > > Li [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [salvatore.bonaccorso[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.43 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mZpMM-0020B6-Uj
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
Cc: Yang Yanchao <yangyanchao6@huawei.com>,
 Security Officers <security@kernel.org>, linux1394-devel@lists.sourceforge.net,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Luo Likang <luolikang@nsfocus.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Sun, Sep 19, 2021 at 08:45:42PM +0200, Salvatore Bonaccorso wrote:
> Hi Dan,
> 
> On Mon, Sep 13, 2021 at 03:23:02PM +0200, Mauro Carvalho Chehab wrote:
> > Em Sun, 12 Sep 2021 11:26:10 -0700
> > Linus Torvalds <torvalds@linuxfoundation.org> escreveu:
> > 
> > > On Sun, Sep 12, 2021 at 6:14 AM Salvatore Bonaccorso <carnil@debian.org> wrote:
> > > >
> > > > On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote:  
> > > > > On Mon, Aug 16, 2021 at 10:27:22AM +0300, Dan Carpenter wrote:  
> > > > > > The bounds checking in avc_ca_pmt() is not strict enough.  It should
> > > > > > be checking "read_pos + 4" because it's reading 5 bytes.  If the
> > > > > > "es_info_length" is non-zero then it reads a 6th byte so there needs to
> > > > > > be an additional check for that.
> > > > > >
> > > > > > I also added checks for the "write_pos".  I don't think these are
> > > > > > required because "read_pos" and "write_pos" are tied together so
> > > > > > checking one ought to be enough.  
> > > 
> > > They may be in sync at a fixed offset, but the buffer length of the
> > > read ("int length") is not in sync with the buffer length for the
> > > write ("sizeof(c->operand)").
> > > 
> > > So I do think the write pos limit checking is actually necessary and needed.
> > > 
> > > > > > RESEND: this patch got lost somehow.  
> > > > >
> > > > > What the heck?  Someone on patchwork just marked this patch as obsolete
> > > > > again!!!  
> > > 
> > > Can we please make sure patchwork has some logging so that that kind
> > > of thing shows _who_ did this?
> > 
> > I've been wanting a feature like that on patchwork for years. Basically,
> > when there's more then a single person capable of accessing a patchwork
> > instance, there's no way to log who changed the status, nor to control who
> > can delegate a patch to someone else or not.
> > 
> > At least for me, touching patchwork is very hard, as the the entire login
> > logic, as well as the database model itself, is abstracted by Django. So,
> > I can't simply change a SQL insert clause there to add something else to
> > their logs nor to change the sent email that it is pushed when a patch
> > status changed.
> > 
> > I ended adding an internal log to indicate when I do some changes on my
> > patchwork instance via script a couple of years ago.
> > 
> > > > Someone knows what is going on here, i.e. what is the problem?  
> > > 
> > > Dan, can you just send that fix to me directly, with the fixed commit
> > > message (see above), and we can close this.
> > 
> > Feel free to add my:
> > 
> > 	Acked-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> 
> I'm sorry for prodding again, I guess I'm becoming a bit annoying :-/
> 
> Dan, could you sent the patch with the above to Linus directly so it
> can show up in at least 5.15-rc3? I guess it's now to late for
> 5.15-rc2.

It looks this is still not yet applied up to 5.15-rc5, if I'm not
mistaken.

Regards,
Salvatore


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
