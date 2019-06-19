Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F0C4BA68
	for <lists+linux1394-devel@lfdr.de>; Wed, 19 Jun 2019 15:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qE2s8B3t+cBk6cwNr3xDOF0EREmwtamb2un8D/LuL0w=; b=iptp79RYiWZamd3Aquo5zok38w
	SAKj4XQBeLSs13/2oA8zDgOOovjNakUhP4mWwU5E7VlVgjEtrwqsg1Hp/69YtMLQI550WUJd+3wxi
	rLv/aqdBfK1mbMwzXsZy49Kj7PBaq2w/1h5MvX2VHlKqU5nWVE6w1ckh0eRjw7L0u1GM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1hdaue-0001NY-9z; Wed, 19 Jun 2019 13:46:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ansitaksi@verizon.net>) id 1hdauc-0001NR-IU
 for linux1394-devel@lists.sourceforge.net; Wed, 19 Jun 2019 13:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:From:Date:Message-ID:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=khjX2F0Qnybl0/AE6FGAI2jsCmDE8y9a6agNZS/t/TM=; b=V/UxRSw4XAyE1s18x/pTEz5Kxu
 1YCbmdTA2l62A1qm/HQc4A8uoK1bQILZfzzdmqwW31v6DuK3m+AZ+iQVEWzVF61AHFdlHJdmiGZpm
 l+JnAsmeqvCwtFbg/Lbjx3DSZK8rhZi7JZM0malfpDf6GIWDsRT5Q0tOR3TEEGRCJGc4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:From:Date:
 Message-ID:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=khjX2F0Qnybl0/AE6FGAI2jsCmDE8y9a6agNZS/t/TM=; b=T
 +ExZbNH8SBnMPxaj+QELDOfofpXpjhLlDmttBYJfaMjTyTA53DKt9P4nGXhP62uGnDJI+LY7XlKBO
 oNppe8+MWD6rUiVHM3Il31iSYpy27HCpa4ftvtcuMDhxcmNBk6pKX0mVwEkGbY5fmEHcdG9Di9q3d
 5qYuKrxIg6SiucbA=;
Received: from [185.216.140.110] (helo=chulaseafood.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hdaub-00HVTf-Fu
 for linux1394-devel@lists.sourceforge.net; Wed, 19 Jun 2019 13:46:06 +0000
To: linux1394-devel@lists.sf.net
Subject: =?UTF-8?B?wrcgICAgICAgICBjYW4geW91IGFzc2lzdCBtZT8=?=
Message-ID: <fdb96bb6483a758aa242279ae1f5e62d@airkinglimited.com>
Date: Wed, 19 Jun 2019 12:41:01 +0200
MIME-Version: 1.0
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=helo; id=chulaseafood.com;
 ip=185.216.140.110; r=util-malware-1.v13.lw.sourceforge.com]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hdaub-00HVTf-Fu
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
From: Laura via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: turisnig@sina.com
Cc: Laura <ansitaksi@verizon.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGksCgpDYW4geW91IGRpcmVjdCBtZSB0byB0aGUgb3duZXIvZGVjaXNpb24gbWFrZXI/ICAgV2Xi
gJlkIGxpa2UgdG8gc2VuZCB5b3UKbW9yZSBjbGllbnRzIHRvIGhlbHAgeW91IGdyb3cgeW91ciBi
dXNpbmVzcy4KCgoKV2UgY2FuIGRlbGl2ZXIgdG8geW91IHJlYWwgdGltZSwgZXhjbHVzaXZlIGFu
ZCBjb25zaXN0ZW50IGxlYWRzIG9mIHBlb3BsZQpsb29raW5nIGZvciB5b3VyIGJ1c2luZXNzLgoK
CgpXaG8gd291bGQgYmUgdGhlIHJpZ2h0IHBlcnNvbiB0byBjYWxsLCBhbmQgd2hhdCBpcyB0aGUg
YmVzdCBudW1iZXIgdG8gcmVhY2gKdGhlbSBvbj8KCgoKVGhhbmsgeW91IQoKCgpMYXVyYSBHZXZp
bnMKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbWFp
bGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0LWRldmVsCg==
