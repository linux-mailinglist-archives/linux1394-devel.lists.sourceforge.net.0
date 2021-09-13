Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD70F40830A
	for <lists+linux1394-devel@lfdr.de>; Mon, 13 Sep 2021 05:06:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mPcIA-00060P-D2; Mon, 13 Sep 2021 03:05:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mpe@ellerman.id.au>) id 1mPcI8-000607-CE
 for linux1394-devel@lists.sourceforge.net; Mon, 13 Sep 2021 03:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CAV4NOXlEMwGjvPVzT2IjuVrKKEzT0HbuXN0U00IH28=; b=RohnA9QlRKPOvrop+K3uNVExe
 +Lt6OzxrnmHfv9+S7YbtuZxS5b1xxnb2JbuGtK4bbjZmjdlljcM6r7cZa4SuUXLU1i4EaJFXdNCYQ
 Yl9YyXjrhliu5qmlf4zXlKN7hDl+6Qjhbc4oCxIl2Vr1l2AGE2DmbnFjAr85BDd2fKu6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CAV4NOXlEMwGjvPVzT2IjuVrKKEzT0HbuXN0U00IH28=; b=iWS9IQU1ivwtgfKF4ZS2m+W5Bi
 MAk75BeMJdC33xYYV99+4tPbUYGm05d+lTKAM4rQi56I1ukc8NaDNnuFyQVr3uc4D3DZr9JXciUXv
 BLdivPKKdVZ/bx95PBJSoqNG6mW7zOWnAemreSO4YPSj6sqzs9prMlfjwyTfNEe3yKUo=;
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mPcI2-008dey-M5
 for linux1394-devel@lists.sourceforge.net; Mon, 13 Sep 2021 03:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
 s=201909; t=1631501426;
 bh=CAV4NOXlEMwGjvPVzT2IjuVrKKEzT0HbuXN0U00IH28=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=c7EMRka50jfxf/moIeEpLtNLGH8uYYvzFr1HhBusVv+KsyrgP5rYlgDZnRdMmeEE3
 8convlPjKAFsuX3DZrUy8DklGyK5Ff7RMgyR/FE86aZMbgUBL4cglJ4ENTRNeRaHV1
 fB3S30VO5fIw5+86gFTdcpWxhLQJUKKs1cOBCme2vvn09BomEpXg0dTPK2A3khIFW4
 Y6/+Mo0jmmWH47E1Nor1wFwLY7fYuUoltVDXqPhwX8pypfOoSnH3mD9Z1V1cCWdY09
 qwtJyGJhkbggaPyPL7rFM8LrZ64XGEbfG30wWffZVv2D/QBYMzXhi1P9awv+l4mVPU
 crxd6NX7djhgg==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4H79vN4njgz9sW5;
 Mon, 13 Sep 2021 12:50:24 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Linus Torvalds <torvalds@linuxfoundation.org>, Salvatore Bonaccorso
 <carnil@debian.org>
Subject: Re: [PATCH v2 RESEND] media: firewire: firedtv-avc: fix a buffer
 overflow in avc_ca_pmt()
In-Reply-To: <CAHk-=wjOW3Fx8td1Snezd1_9sf8q7KuQx8TyQNR0ypS2rVBHtg@mail.gmail.com>
References: <YRoNTX3Krtw9NdkI@eldamar.lan> <20210816072721.GA10534@kili>
 <20210901104026.GB2129@kadam> <YT39LBTgGL/b/V5N@eldamar.lan>
 <CAHk-=wjOW3Fx8td1Snezd1_9sf8q7KuQx8TyQNR0ypS2rVBHtg@mail.gmail.com>
Date: Mon, 13 Sep 2021 12:50:19 +1000
Message-ID: <87pmtdkx3o.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Linus Torvalds <torvalds@linuxfoundation.org> writes: > On
 Sun, Sep 12, 2021 at 6:14 AM Salvatore Bonaccorso <carnil@debian.org> wrote:
 >> >> On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mPcI2-008dey-M5
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
 Luo Likang <luolikang@nsfocus.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linuxfoundation.org> writes:
> On Sun, Sep 12, 2021 at 6:14 AM Salvatore Bonaccorso <carnil@debian.org> wrote:
>>
>> On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote:
>> > On Mon, Aug 16, 2021 at 10:27:22AM +0300, Dan Carpenter wrote:
>> > > The bounds checking in avc_ca_pmt() is not strict enough.  It should
>> > > be checking "read_pos + 4" because it's reading 5 bytes.  If the
>> > > "es_info_length" is non-zero then it reads a 6th byte so there needs to
>> > > be an additional check for that.
>> > >
>> > > I also added checks for the "write_pos".  I don't think these are
>> > > required because "read_pos" and "write_pos" are tied together so
>> > > checking one ought to be enough.
>
> They may be in sync at a fixed offset, but the buffer length of the
> read ("int length") is not in sync with the buffer length for the
> write ("sizeof(c->operand)").
>
> So I do think the write pos limit checking is actually necessary and needed.
>
>> > > RESEND: this patch got lost somehow.
>> >
>> > What the heck?  Someone on patchwork just marked this patch as obsolete
>> > again!!!
>
> Can we please make sure patchwork has some logging so that that kind
> of thing shows _who_ did this?

It's not easily visible in the web UI, but patchwork does log that sort
of info.

The v2 RESEND is:

 https://patchwork.linuxtv.org/project/linux-media/patch/20210816072721.GA10534@kili/

In the top right is the patch id (76352), you can then get the list of
events for that patch at:

  https://patchwork.linuxtv.org/api/events/?patch=76352

Which shows that hverkuil changed it to obsolete on 2021-09-01T10:16:43.

Presumably because they picked up the non-resend version, which was
marked as under-review around the same time:

  https://patchwork.linuxtv.org/api/events/?patch=74849

And then also visible on the above page, it was marked as accepted by
mchehab on 2021-09-03T13:06:16.

But I don't see the patch in linux-next, or in linux-media.git, so I'm
not sure where it's been accepted to?

cheers


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
