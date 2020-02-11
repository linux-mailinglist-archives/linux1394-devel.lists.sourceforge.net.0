Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C862B158BFC
	for <lists+linux1394-devel@lfdr.de>; Tue, 11 Feb 2020 10:38:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1j1S01-000637-Mx; Tue, 11 Feb 2020 09:38:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <juergh@gmail.com>) id 1j1S00-00062l-4a
 for linux1394-devel@lists.sourceforge.net; Tue, 11 Feb 2020 09:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q/y/+4eUg9fjliMzpDhhR8/ai9OpD9Gp1cd4QedGPwA=; b=XDZiRjSvyv4QXq3+iwyl6RrmFn
 XvGzHDJJWSCF+Eg7cVuG/60iKVwXo6ttYujuJEMdI5T32xTL6fugwemB/GaE/bcysowGzxY4uFFGG
 0C6Wa+kts3nzINXyK/K8cGMMdzEqc+VZpywmz1qgH3g9LYMDHppoSDOuERl9HtxWUnFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q/y/+4eUg9fjliMzpDhhR8/ai9OpD9Gp1cd4QedGPwA=; b=BAfokX4rWdnknCpQB3tXPv6xp1
 VuQwArIDD8pY3b6jup9ld4h4Hnxpm7xmAGCIB3xlNmTrDbQUHO2SUdBoZPEyjQJ8vkAZgIkV1nCQ/
 WKev4n15LRqEx9GQqoXlQB7mdUrRp6Ydya2oGT5h2KmzBFHrMeF4uWkLhyEihJHWhhC0=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j1Rzy-000MDE-MT
 for linux1394-devel@lists.sourceforge.net; Tue, 11 Feb 2020 09:38:32 +0000
Received: by mail-oi1-f180.google.com with SMTP id i1so12156048oie.8
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 11 Feb 2020 01:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q/y/+4eUg9fjliMzpDhhR8/ai9OpD9Gp1cd4QedGPwA=;
 b=bfNMOH+lrfF9oWSzdKnG1B7EO/iwtfSbveGg7qcIY3UlIc8eSsJ50qQ7j6QXTaRN6X
 yB+i094F2ttoVciFILDkHkTpxU8j9ZJBsQX3pOU8Ex/op3GtYktAKmMaPa/7OqTsVxSg
 Wt5Vr/m0vJjC039ekw5VAkDmi4f/6IXqG4aGLCoeFkp/QKgdrJPTF6w+sVHxIVu8CWUQ
 cle2rofCc1oQdx0+I7M0y/vi3ZHjqqPCtzyNKz5O2QEWJ0BaxuJEtk689njOLiTZMuq0
 yxfTfWVposn9B4D7W59Gb1JiwVYXtKX6lPd9iZCk698xX8Hb3XYRfEcrppo7eMjbb+cJ
 FDjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q/y/+4eUg9fjliMzpDhhR8/ai9OpD9Gp1cd4QedGPwA=;
 b=Y1DkKFkl77s+Cx2QeQG1yDJa+S3NhUSyUrwxbhyNro9p+UQBi9fmUo0PO+euLW+2mz
 mjBY7ueF+q6V/Gdpq7rip52NX0jqHx4O2ppYinWM1KGY2FSYYnAT740eefdoqB/AsM7/
 mINZUbWlI+e4mbjKFmQHdIO41PaiPqTljyb8HohsR78mgXd5WbS/0hFaiVDNjzEG65Xb
 SB7yvYkyjOVDKxphDhjCfzteLjPfPXjYXzfdIpC6YHd38zJF19yK5rD/Bdi0iLtqibUL
 nj/UuFJdsPXmhAaU7dZ+wYA2v9reWwI0Srvqqly/5UVZ+xknuHnhqR5LadalMtDOClpG
 lmkQ==
X-Gm-Message-State: APjAAAVTO7CIQFp+fh4V/3wWPLxfSFj+uG3pDid4kVMOK/73WX0oiiYh
 3Oank52qD704ahJsh4QK7x7gk5UU0kceFXUepJI=
X-Google-Smtp-Source: APXvYqwaYUIpOm+4S+5PlKzhOrwojdBm5c0SNtUCgg0+4ikVU8Bk6rSYESoPCHOAzb8djoDWAUgtAFPwbQX/eDZdSmU=
X-Received: by 2002:a54:4006:: with SMTP id x6mr2294213oie.145.1581413904338; 
 Tue, 11 Feb 2020 01:38:24 -0800 (PST)
MIME-Version: 1.0
References: <CADLDEKvqqr4bgAvAE3SC-qvYc2MSwuALKZvAyR4b8XHvQxDSjA@mail.gmail.com>
 <9374be19-91a1-8423-c402-c168c650f0e8@ladisch.de>
In-Reply-To: <9374be19-91a1-8423-c402-c168c650f0e8@ladisch.de>
From: Juerg Haefliger <juergh@gmail.com>
Date: Tue, 11 Feb 2020 10:38:13 +0100
Message-ID: <CADLDEKsRrONF0JEoXd6enndJxWL12o8gL9B482kMUst-4zmjCg@mail.gmail.com>
Subject: Re: VIA VT6307 problems
To: Clemens Ladisch <clemens@ladisch.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (juergh[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1j1Rzy-000MDE-MT
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

> > I've just purchased a firewire card based on the VIA VT6307L chip and
> > as soon as I plug in and turn on a DV camera I get repeated kernel
> > messages
> >
> > Feb  8 10:11:17  kernel: [  199.341690] firewire_core 0000:01:00.0: phy config: new root=ffc1, gap_count=5
> > Feb  8 10:11:18  kernel: [  199.343353] firewire_core 0000:01:00.0: phy config: new root=ffc1, gap_count=5
> > Feb  8 10:11:18  kernel: [  199.346380] firewire_core 0000:01:00.0: phy config: new root=ffc1, gap_count=5
> > Feb  8 10:11:18  kernel: [  199.435397] irq_handler: 28 callbacks suppressed
> > Feb  8 10:11:18  kernel: [  199.435402] firewire_ohci 0000:01:00.0: isochronous cycle too long
> > Feb  8 10:11:18  kernel: [  199.866219] firewire_core 0000:01:00.0: giving up on node ffc0: reading config rom failed: bus reset
> > Feb  8 10:11:18  kernel: [  199.930241] firewire_core 0000:01:00.0: rediscovered device fw0
> > Feb  8 10:11:18  kernel: [  199.930250] firewire_core 0000:01:00.0: giving up on node ffc0: reading config rom failed: bus reset
> > Feb  8 10:11:18  kernel: [  199.930252] firewire_core 0000:01:00.0: giving up on node ffc1: reading config rom failed: bus reset
> > Feb  8 10:11:18  kernel: [  199.930254] firewire_core 0000:01:00.0: phy config: new root=ffc1, gap_count=5
>
> Looks like a problem with the cable or a connector.  Can you check with a different
> cable or device?

I've already tried a different cable and all 3 available ports on the
card. I then plugged it into a Windows machine and all of a sudden I
get sporadic NMIs (memory parity errors) without even connecting a
device. Looks like that card is bad.

Thanks
...Juerg


> Regards,
> Clemens
>
>
> _______________________________________________
> mailing list linux1394-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/linux1394-devel


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
