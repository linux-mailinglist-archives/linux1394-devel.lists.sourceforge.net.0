Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DB0407D84
	for <lists+linux1394-devel@lfdr.de>; Sun, 12 Sep 2021 15:14:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mPPJb-0001wK-8c; Sun, 12 Sep 2021 13:14:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <salvatore.bonaccorso@gmail.com>) id 1mPPJZ-0001vp-2G
 for linux1394-devel@lists.sourceforge.net; Sun, 12 Sep 2021 13:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KONq3UZZZiM1/nT2K9APaDzai47fBmYG1LLlmoJmq/w=; b=ceHXd8jkF+fKlXFyeD9HheJXU4
 txuUpaTNnNqyjm6M2IiGiBVQFux4UocofU2t0iLTfQtdROFgnw3cYVAlsMn2Qfq81LKsunJhFFWce
 r0tXPSGJRFB/sHeaEvo7SpxIUvH+6RBywz9hkwAXC18IIBYbwpexm8Q0PknI7EWn/6JE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KONq3UZZZiM1/nT2K9APaDzai47fBmYG1LLlmoJmq/w=; b=TlelIZiIC0Wr66nngDqAo0a4HH
 FZp5Zxl9tDiBePaYZWq5x6cghFs/QyMtviHa+s6OWugz9bJYZK8//DW00AH+i7D1uTcxXbjg8lzdo
 z0dDGzcnnlASyD3PqBAaA1E+/mIcT8q7gEgQAWn72LAQiQd5yweRavC4ju1ObQ+1UAKA=;
Received: from mail-wr1-f54.google.com ([209.85.221.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mPPJU-0083q4-R3
 for linux1394-devel@lists.sourceforge.net; Sun, 12 Sep 2021 13:14:32 +0000
Received: by mail-wr1-f54.google.com with SMTP id q26so10223841wrc.7
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 12 Sep 2021 06:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KONq3UZZZiM1/nT2K9APaDzai47fBmYG1LLlmoJmq/w=;
 b=dJZGnF8CY/GpRQ4PySpwP8EsVBTNYIDocIU6rUzd+Fg3PVcQT4SG3tw4BjbOwy2dUd
 NtDv1pb5gYqVvhtGfZJRnespSFh7WuQkXDXfuYSPIxAuGQk9EjVtdvN3tpWFoqNXiOkL
 N4q8RkSbO0gTACkqp6bBHiWB+abRprVhW53uhDHXuKKIR9UgQvs+gIptOz05T7fhJQsV
 ltrDntzARDM9yAd4RMhQWsmPb/TwNDRoLljw1qe3NHr2yrWV9Z3Axq3IhcAC7AdGx3ui
 5M1PhRsBKlQgFFsFNnodYo3H4OAKzIQtNwjUF5kKABAiKSYhx2LssRXusPsnisMseGKr
 0FWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=KONq3UZZZiM1/nT2K9APaDzai47fBmYG1LLlmoJmq/w=;
 b=FSWjo04CdbWyateWvAojiXLB6eX111r3YCWGeX7c86rGYwjRLsFZqQmxuu8EhLVOh4
 UMgSin0AOPYD2HAivxgsRnwyp8+2EWsKhsfb28t0+a9itLfUWT/2CIirAYbA0NT2frRv
 WcUMNupGexJFLvZlKGvL4GZ9iC9Zq28IFSqLdj6AIZnMzO4Uu+aGuUUNL/j1b9tnurWt
 21480cg0OtX0FFz8ICOf4SNbljKCx4OX7VTYIwvA8W+a1uaO8Oe+TBuuxZBEk5E1YSsA
 hyhEFzalfykaEPXENSLmOJuvLaMIalFo/fS6V0kiHN0nAntBNSwcFi+wlXFwgVKg7/4z
 uDHw==
X-Gm-Message-State: AOAM53208fvpNsz1/j48+r6uLjjR33PZwrr7H0URfErGeXj/aiGp0maJ
 Yenblq1KyuZHo8a1dN4vyvySgOtNiTz2YQ==
X-Google-Smtp-Source: ABdhPJzWyhM/BAFC2nE2/yuZ6lqcU927l9cVa/6KluFiCffJdhXykpZPGoMQdJoG6PhRgg5osv4Lzw==
X-Received: by 2002:adf:d185:: with SMTP id v5mr7511893wrc.378.1631452462529; 
 Sun, 12 Sep 2021 06:14:22 -0700 (PDT)
Received: from eldamar (80-218-24-251.dclient.hispeed.ch. [80.218.24.251])
 by smtp.gmail.com with ESMTPSA id j18sm4372587wro.1.2021.09.12.06.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Sep 2021 06:14:21 -0700 (PDT)
Date: Sun, 12 Sep 2021 15:14:20 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 RESEND] media: firewire: firedtv-avc: fix a buffer
 overflow in avc_ca_pmt()
Message-ID: <YT39LBTgGL/b/V5N@eldamar.lan>
References: <YRoNTX3Krtw9NdkI@eldamar.lan> <20210816072721.GA10534@kili>
 <20210901104026.GB2129@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210901104026.GB2129@kadam>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, [linux-distros list dropped as not anymore relevant for
 embargo] On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote: >
 On Mon, Aug 16, 2021 at 10:27:22AM +0300, Dan Carpenter wrote: > > The bounds
 checking in avc_ca_pmt() is not strict enough. It should [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [salvatore.bonaccorso[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.54 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mPPJU-0083q4-R3
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
Cc: security@kernel.org, Yang Yanchao <yangyanchao6@huawei.com>,
 linux-distros@vs.openwall.org, Luo Likang <luolikang@nsfocus.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

[linux-distros list dropped as not anymore relevant for embargo]

On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote:
> On Mon, Aug 16, 2021 at 10:27:22AM +0300, Dan Carpenter wrote:
> > The bounds checking in avc_ca_pmt() is not strict enough.  It should
> > be checking "read_pos + 4" because it's reading 5 bytes.  If the
> > "es_info_length" is non-zero then it reads a 6th byte so there needs to
> > be an additional check for that.
> > 
> > I also added checks for the "write_pos".  I don't think these are
> > required because "read_pos" and "write_pos" are tied together so
> > checking one ought to be enough.  But they make the code easier to
> > understand for me.  The check on write_pos is:
> > 
> > 	if (write_pos + 4 >= sizeof(c->operand) - 4) {
> > 
> > The first "+ 4" is because we're writing 5 bytes and the last " - 4"
> > is to leave space for the CRC.
> > 
> > The other problem is that "length" can be invalid.  It comes from
> > "data_length" in fdtv_ca_pmt().  Added a check in fdtv_ca_pmt() to
> > prevent that.
> > 
> > Cc: stable@vger.kernel.org
> > Reported-by: Luo Likang <luolikang@nsfocus.com>
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> > RESEND: this patch got lost somehow.
> > 
> 
> What the heck?  Someone on patchwork just marked this patch as obsolete
> again!!!
> 
> Mauro can you figure out who's doing that and what's going on?  The
> first time it was marked as obsolete then I asked about it twice, Greg
> asked about it, and Salvatore Bonaccorso asked about it.  But all we
> get are anonymous notifications from patchwork.  It's a bit frustrating.

Someone knows what is going on here, i.e. what is the problem?

Regards,
Salvatore


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
