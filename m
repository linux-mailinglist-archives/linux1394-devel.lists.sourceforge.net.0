Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D57407F91
	for <lists+linux1394-devel@lfdr.de>; Sun, 12 Sep 2021 20:58:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mPUfo-0008An-L8; Sun, 12 Sep 2021 18:57:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mPUfm-0008AU-2s
 for linux1394-devel@lists.sourceforge.net; Sun, 12 Sep 2021 18:57:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F+afOWtVRu3Y6MbtiEQhJ1O4o34THJRuSUm2FoLGYhQ=; b=j8rNZ8AX2IW2loKo0oGTslQiUW
 Xa6o02JxgqacarnTERyNs2D/yWyHcLYuRzSumyNQaVFEFe3azCpEchht3Ldmp3wtPM+IR9Ctby2DT
 72wduTt/cE2nkubFGt6bcsR+EpAyq+f74PsMIH0uQoq9LpILSSArjakyChbPf/kPzM2E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F+afOWtVRu3Y6MbtiEQhJ1O4o34THJRuSUm2FoLGYhQ=; b=KgMYxw6YfoPApJ8ac1I70BjWHu
 apx31pdXq+uCbhV5H6/q5hj8nPMASdpzJp0FlC/mfm4ipF1/7kZa4sIk74QLPPfuhvVehtf5FeXmB
 qhn8Offyh8oKbtc7Tb4zpH5VpBfzcrjDv82/I7QhJzrq/Qll/W4PByw9PCQjOa/x3Su8=;
Received: from mail-lj1-f173.google.com ([209.85.208.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mPUfd-008HgD-Vs
 for linux1394-devel@lists.sourceforge.net; Sun, 12 Sep 2021 18:57:50 +0000
Received: by mail-lj1-f173.google.com with SMTP id h1so13056301ljl.9
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 12 Sep 2021 11:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F+afOWtVRu3Y6MbtiEQhJ1O4o34THJRuSUm2FoLGYhQ=;
 b=dJiEKU6U5HlUY0/fZxvMQ0MwVcQgZ9mHD49wijwJ7g8WQIt+oEEanwybXhL+gMnV2h
 rdGbi3TcU9sHXbgl7bYFZLadVKxgiTt9JF7A1HIUOfy896/tfkJXRrg7hC5KxeDv1rlh
 Z5zEFBTqf1Fs6wJeryPCuUaOMixNyfobh7DGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F+afOWtVRu3Y6MbtiEQhJ1O4o34THJRuSUm2FoLGYhQ=;
 b=lz/wWqK7Dz3AHkjzIkpEeepgFWz7oiI91YCLqBl16213zV19U5N7KWGUVi4nZcpYzR
 E1oLkwe30qVSO97VWTk65WuCahQzRkmFSs8o5y53rTXAFMahCc8Ox6LCFR8cAxLzJdE6
 tNDdBk4lIO89bpNcBfkHYbx0DzI2b3y+RBrZoET+4KTIBv71pUNzdgLJ+7RHVh8vRGCU
 KJVLRqr1T7WLEzxDdWyU9y6dUWd3CXiCQQchqkMlUYxnDs/DHJWMeJfzlTzXpbWWDVI3
 Ttmzg9iRAat7dghi0vMJT0xyqaqW0c3M5Rp2t3vdJ/tKMMrW+Cd+MNfZHaMTtSwftPAG
 Nfjw==
X-Gm-Message-State: AOAM530gTzG3myIZV02IJ27mz7RHgrH5rpbFsHDIefmDjG6wnJyB6Fk8
 iWrtJdxShcgyawczlYqTVMcL6eLv+Kfkec8UDNI=
X-Google-Smtp-Source: ABdhPJwVXYBsa1FpOjsnD+81F5zq9hSxkwDa/Aeuytdv8K7/8b/HqxFEXZN+bwr1lZ8D0tPzXZp+CQ==
X-Received: by 2002:a05:6512:1052:: with SMTP id
 c18mr3037832lfb.223.1631471187942; 
 Sun, 12 Sep 2021 11:26:27 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id a23sm671883ljb.95.2021.09.12.11.26.26
 for <linux1394-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Sep 2021 11:26:26 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id h1so12961046ljl.9
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 12 Sep 2021 11:26:26 -0700 (PDT)
X-Received: by 2002:a2e:8107:: with SMTP id d7mr7284623ljg.68.1631471186006;
 Sun, 12 Sep 2021 11:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <YRoNTX3Krtw9NdkI@eldamar.lan> <20210816072721.GA10534@kili>
 <20210901104026.GB2129@kadam> <YT39LBTgGL/b/V5N@eldamar.lan>
In-Reply-To: <YT39LBTgGL/b/V5N@eldamar.lan>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Sun, 12 Sep 2021 11:26:10 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjOW3Fx8td1Snezd1_9sf8q7KuQx8TyQNR0ypS2rVBHtg@mail.gmail.com>
Message-ID: <CAHk-=wjOW3Fx8td1Snezd1_9sf8q7KuQx8TyQNR0ypS2rVBHtg@mail.gmail.com>
Subject: Re: [PATCH v2 RESEND] media: firewire: firedtv-avc: fix a buffer
 overflow in avc_ca_pmt()
To: Salvatore Bonaccorso <carnil@debian.org>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Sep 12,
 2021 at 6:14 AM Salvatore Bonaccorso <carnil@debian.org>
 wrote: > > On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote:
 > > On Mon, Aug 16, 2021 at 10:27:22AM +0300, Dan Car [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.173 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mPUfd-008HgD-Vs
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
 linux-distros@vs.openwall.org, Luo Likang <luolikang@nsfocus.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Sep 12, 2021 at 6:14 AM Salvatore Bonaccorso <carnil@debian.org> wrote:
>
> On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote:
> > On Mon, Aug 16, 2021 at 10:27:22AM +0300, Dan Carpenter wrote:
> > > The bounds checking in avc_ca_pmt() is not strict enough.  It should
> > > be checking "read_pos + 4" because it's reading 5 bytes.  If the
> > > "es_info_length" is non-zero then it reads a 6th byte so there needs to
> > > be an additional check for that.
> > >
> > > I also added checks for the "write_pos".  I don't think these are
> > > required because "read_pos" and "write_pos" are tied together so
> > > checking one ought to be enough.

They may be in sync at a fixed offset, but the buffer length of the
read ("int length") is not in sync with the buffer length for the
write ("sizeof(c->operand)").

So I do think the write pos limit checking is actually necessary and needed.

> > > RESEND: this patch got lost somehow.
> >
> > What the heck?  Someone on patchwork just marked this patch as obsolete
> > again!!!

Can we please make sure patchwork has some logging so that that kind
of thing shows _who_ did this?

> Someone knows what is going on here, i.e. what is the problem?

Dan, can you just send that fix to me directly, with the fixed commit
message (see above), and we can close this.

That still leaves the "who closes things on patchwork" question, but
that's something I can't do anything about.

                Linus


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
